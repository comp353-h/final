DROP TRIGGER IF EXISTS ConferenceRoomTrigger;
DROP TRIGGER IF EXISTS OfficeTrigger;
DROP TRIGGER IF EXISTS LabTrigger;
DROP TRIGGER IF EXISTS ClassroomTrigger;
DROP TRIGGER IF EXISTS INSERT_CHECK_prereq;
DROP TRIGGER IF EXISTS UPDATE_CHECK_prereq;

DELIMITER $$
CREATE TRIGGER ClassroomTrigger BEFORE INSERT ON Classroom
    FOR EACH ROW BEGIN
        INSERT INTO Room ( roomID, buildingID ) VALUES ( NEW.classroomID, NEW.buildingID );
    END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER LabTrigger BEFORE INSERT ON Lab
    FOR EACH ROW BEGIN
        INSERT INTO Room ( roomID, buildingID ) VALUES ( NEW.labID, NEW.buildingID );
    END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER OfficeTrigger BEFORE INSERT ON Office
    FOR EACH ROW BEGIN
        INSERT INTO Room ( roomID, buildingID ) VALUES ( NEW.officeID, NEW.buildingID );
    END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER ConferenceRoomTrigger BEFORE INSERT ON ConferenceRoom
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
    
  IF abc IS NULL AND checkfirstEntry > 1
THEN
	SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'Prerequisites for this course is not comepleted yet';
                   END IF;

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
    
  IF abc IS NULL AND checkfirstEntry > 1
THEN
	SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'Prerequisites for this course is not comepleted yet';
                   END IF;

  IF abc = 'F'
THEN
	SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'You failed in prerequisite course';           
    END IF;
END;$$
