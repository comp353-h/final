DROP TRIGGER IF EXISTS ConferenceRoomTrigger;
DROP TRIGGER IF EXISTS OfficeTrigger;
DROP TRIGGER IF EXISTS LabTrigger;
DROP TRIGGER IF EXISTS ClassroomTrigger;

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