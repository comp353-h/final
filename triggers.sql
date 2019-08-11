DROP TRIGGER IF EXISTS ConferenceRoomInsertTrigger;
DROP TRIGGER IF EXISTS OfficeInsertTrigger;
DROP TRIGGER IF EXISTS LabInsertTrigger;
DROP TRIGGER IF EXISTS ClassroomInsertTrigger;
DROP procedure IF EXISTS INSERT_CHECK_prereq;
DROP TRIGGER IF EXISTS UPDATE_CHECK_prereq;
DROP TRIGGER IF EXISTS TA_CHECK;
DROP TRIGGER IF EXISTS PROF_TIMESLOT_CHECK_INSERT;
DROP TRIGGER IF EXISTS PROF_TIMESLOT_CHECK_UPDATE;
DROP TRIGGER IF EXISTS totalhours_TA;
DROP TRIGGER IF EXISTS STUCOURTRIGGERS;
DROP procedure IF EXISTS StudentCourseMultRegs;
DROP TRIGGER IF EXISTS gpaupdates_after_update;
DROP TRIGGER IF EXISTS gpaupdates_after_insert;
DROP TRIGGER if EXISTS rescrchsupervisor;

DELIMITER $$
CREATE TRIGGER TA_CHECK BEFORE INSERT ON TeachingAssistant
FOR EACH ROW
BEGIN
IF (
(SELECT gpa FROM Student WHERE studentID = NEW.studentID) < 3.2

) THEN 	SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'This undergrad''s GPA is too low. Must have a GPA of 3.2 or higher.';
                   END IF;
END$$
DELIMITER ; 


DELIMITER $$
CREATE TRIGGER ClassroomInsertTrigger BEFORE INSERT ON Classroom
    FOR EACH ROW BEGIN
        INSERT INTO Room ( roomID, buildingID ) VALUES ( NEW.classroomID, NEW.buildingID );
    END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER LabInsertTrigger BEFORE INSERT ON Lab
    FOR EACH ROW BEGIN
        INSERT INTO Room ( roomID, buildingID ) VALUES ( NEW.labID, NEW.buildingID );
    END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER OfficeInsertTrigger BEFORE INSERT ON Office
    FOR EACH ROW BEGIN
        INSERT INTO Room ( roomID, buildingID ) VALUES ( NEW.officeID, NEW.buildingID );
    END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER ConferenceRoomInsertTrigger BEFORE INSERT ON ConferenceRoom
    FOR EACH ROW BEGIN
        INSERT INTO Room ( roomID, buildingID ) VALUES ( NEW.conferenceRoomID, NEW.buildingID );
    END$$
DELIMITER ;
DELIMITER $$

CREATE Procedure INSERT_CHECK_prereq(IN ccourseID varchar(8))
BEGIN
DECLARE abc varchar(8);
DECLARE checkfirstEntry INT(1);
SET abc = (
SELECT 
    sc2.grade
FROM
    (SELECT 
        c.prerequisite
    FROM
        Course c
    WHERE
        c.courseID = ccourseID) tabc
        JOIN
    StudentCourses sc2 ON (sc2.courseID = tabc.prerequisite)
                    );
                    
SET checkfirstEntry = (SELECT 
    COUNT(sc.courseID)
FROM StudentCourses sc
	WHERE sc.studentID = 1);
    
  IF abc = 'F'
THEN
	SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'You failed in prerequisite course';           
    END IF;
END;$$


DELIMITER $$
CREATE TRIGGER UPDATE_CHECK_prereq BEFORE UPDATE ON StudentCourses
FOR EACH ROW
BEGIN
DECLARE abc varchar(8);
DECLARE checkfirstEntry INT(1);
SET abc = (
SELECT 
    sc2.grade
FROM
    (SELECT 
        c.prerequisite
    FROM
        Course c
    WHERE
        c.courseID = NEW.courseID) tabc
        JOIN
    StudentCourses sc2 ON (sc2.courseID = tabc.prerequisite)
                    );
                    
SET checkfirstEntry = (SELECT 
    COUNT(sc.courseID)
FROM StudentCourses sc
	WHERE sc.studentID = 1);
    
  IF abc = 'F'
THEN
	SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'You failed in prerequisite course';           
    END IF;
END;$$


DELIMITER $$
CREATE TRIGGER PROF_TIMESLOT_CHECK_INSERT BEFORE INSERT ON Section
FOR EACH ROW
BEGIN
IF EXISTS
(SELECT 
    *
FROM
    Section
WHERE
    termID = NEW.termID
        AND instructorID = NEW.instructorID
        AND courseID = NEW.courseID
        AND timeID = NEW.timeID)

 THEN 	SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'Prof is already teaching in that time slot';
                   END IF;
END$$
DELIMITER ; 

DELIMITER $$
CREATE TRIGGER PROF_TIMESLOT_CHECK_UPDATE BEFORE UPDATE ON Section
FOR EACH ROW
BEGIN
IF EXISTS
(SELECT 
    *
FROM
    Section
WHERE
    termID = NEW.termID
        AND instructorID = NEW.instructorID
        AND courseID = NEW.courseID
        AND timeID = NEW.timeID)

 THEN 	SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'Prof is already teaching in that time slot';
                   END IF;
END$$
DELIMITER ; 



DELIMITER $$
CREATE TRIGGER totalhours_TA BEFORE INSERT ON TAContractHistory
FOR EACH ROW
BEGIN
DECLARE totalhours INT;
SET totalhours = (SELECT 
    SUM(tac.hours)
FROM
    TAContractHistory tah
        JOIN
    TAContract tac ON (tac.contractID = tah.contractID)
WHERE
    studentID = NEW.studentID);
IF ( totalhours ) > 260 THEN
	SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'Insert will make the TA work for more 260 hours';
    END IF;
END;$$


DROP TRIGGER IF EXISTS STUCOURTRIGGERS
DELIMITER $$
CREATE TRIGGER STUCOURTRIGGERS BEFORE INSERT ON StudentCourses
FOR EACH ROW
BEGIN
     CALL StudentCourseMultRegs(NEW.courseID, NEW.sectionID);
-- 		make INSERT_CHECK_prereq to a prodcure
     CALL INSERT_CHECK_prereq (NEW.courseID) ;
END$$

DELIMITER $$
 CREATE PROCEDURE StudentCourseMultRegs(IN ccourseID varchar(8) ,IN ssectionID varchar(2))
   BEGIN
    DECLARE countvar INT;

  SET countvar = (SELECT 
    COUNT(*)
FROM
    StudentCourses
        INNER JOIN
    Section ON (StudentCourses.courseID = Section.courseID AND StudentCourses.sectionID = Section.sectionID)
WHERE
    Section.termID = (SELECT termID FROM Section WHERE courseID = ccourseID AND sectionID = ssectionID)
    AND Section.sectionID = ssectionID);
IF countvar > 0
 THEN SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'You are already registered in one section';
                   END IF;
   END $$
   

DELIMITER $$
CREATE TRIGGER gpaupdates_after_update after UPDATE ON StudentCourses
FOR EACH ROW
BEGIN
declare gup decimal(3,2);
set gup = (
SELECT 
    (SUM(g.gradePoint * c.courseCredits) / SUM(CASE
        WHEN sc.grade IS NOT NULL THEN c.courseCredits
    END)) AS GPA
FROM
    StudentCourses sc
        JOIN
    Course c ON (sc.courseID = c.courseID)
        JOIN
    Grade g ON (g.grade = sc.grade)
WHERE
    sc.studentID = NEW.studentID);
    
    UPDATE Student set Student.gpa = gup where Student.studentID = NEW.studentID;

END$$
DELIMITER ;


DELIMITER $$
CREATE TRIGGER gpaupdates_after_insert after insert ON StudentCourses
FOR EACH ROW
BEGIN
declare gup decimal(3,2);
set gup = (
SELECT 
    (SUM(g.gradePoint * c.courseCredits) / SUM(CASE
        WHEN sc.grade IS NOT NULL THEN c.courseCredits
    END)) AS GPA
FROM
    StudentCourses sc
        JOIN
    Course c ON (sc.courseID = c.courseID)
        JOIN
    Grade g ON (g.grade = sc.grade)
WHERE
    sc.studentID = NEW.studentID);
    
    UPDATE Student set Student.gpa = gup where Student.studentID = NEW.studentID;

END$$
DELIMITER ;


DELIMITER $$
CREATE TRIGGER rescrchsupervisor BEFORE INSERT ON GraduateStudent
FOR EACH ROW
BEGIN
DECLARE gpaa Decimal(3,2);
DECLARE spvr INT;

SET gpaa = (Select Student.gpa from Student where Student.studentID = NEW.studentID);
SET spvr = (select supervisorID from ResearchFunding where supervisorID = NEW.supervisorID);
IF ( gpaa ) < 3.0 and spvr = NEW.supervisorID 
THEN
	SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'GRADUATE GPA is less for rescharch funding';
    END IF;
END;$$
