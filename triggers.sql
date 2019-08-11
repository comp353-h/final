DROP TRIGGER IF EXISTS ConferenceRoomInsertTrigger;
DROP TRIGGER IF EXISTS OfficeInsertTrigger;
DROP TRIGGER IF EXISTS LabInsertTrigger;
DROP TRIGGER IF EXISTS ClassroomInsertTrigger;
DROP TRIGGER IF EXISTS INSERT_CHECK_prereq;
DROP TRIGGER IF EXISTS UPDATE_CHECK_prereq;
DROP TRIGGER IF EXISTS TA_CHECK;
DROP TRIGGER IF EXISTS PROF_TIMESLOT_CHECK_INSERT;
DROP TRIGGER IF EXISTS PROF_TIMESLOT_CHECK_UPDATE;
DROP TRIGGER IF EXISTS totalhours_TA;
-- DROP TRIGGER IF EXISTS STUCOURTRIGGERS
-- DROP procedure IF EXISTS StudentCourseMultRegs;

DELIMITER $$
CREATE TRIGGER TA_CHECK BEFORE INSERT ON TeachingAssistant
FOR EACH ROW
BEGIN
IF (
(SELECT gpa FROM Student WHERE studentID = NEW.studentID) < 3.2

) THEN 	SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'This grad studenet is too dumb to be a TA.';
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
CREATE TRIGGER INSERT_CHECK_prereq BEFORE INSERT ON StudentCourses
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

-- TO BE TESTED by RS 

-- DROP TRIGGER IF EXISTS STUCOURTRIGGERS
-- DELIMITER $$
-- CREATE TRIGGER STUCOURTRIGGERS BEFORE INSERT ON StudentCourses
-- FOR EACH ROW
-- BEGIN
--      CALL StudentCourseMultRegs(NEW.courseID, NEW.sectionID);
-- -- 		make INSERT_CHECK_prereq to a prodcure
--      CALL INSERT_CHECK_prereq
-- END$$


-- DELIMITER $$
--  CREATE PROCEDURE StudentCourseMultRegs(IN ccourseID varchar(8) ,IN ssectionID varchar(2))
--    BEGIN
--     DECLARE countvar INT;

--   SET countvar = (SELECT 
--     COUNT(*)
-- FROM
--     StudentCourses
--         INNER JOIN
--     Section ON (StudentCourses.courseID = Section.courseID
--         AND StudentCourses.sectionID = Section.sectionID)
-- WHERE
--     Section.termID = (SELECT 
--             termID
--         FROM
--             Section
--         WHERE
--             courseID = ccourseID
--                 AND sectionID = ssectionID));
-- IF countvar > 0
--  THEN SIGNAL SQLSTATE '45000'
--            SET MESSAGE_TEXT = 'You are already registered in one section';
--                    END IF;
--    END $$
--  DELIMITER 
