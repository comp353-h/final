DROP TABLE IF EXISTS Department;
DROP TABLE IF EXISTS RoomEquipment;
DROP TABLE IF EXISTS Facilities;
DROP TABLE IF EXISTS Classroom;
DROP TABLE IF EXISTS Lab;
DROP TABLE IF EXISTS ConferenceRoom;
DROP TABLE IF EXISTS Office;
DROP TABLE IF EXISTS Room;
DROP TABLE IF EXISTS Building;
DROP TABLE IF EXISTS Campus;

CREATE TABLE Campus
(
    name            VARCHAR( 128 ) NOT NULL,

    PRIMARY KEY ( name )
) ENGINE=INNODB;

CREATE TABLE Building
(
    ID              VARCHAR( 2 ) NOT NULL,
    campusName      VARCHAR( 128 ) NOT NULL,

    PRIMARY KEY ( ID ),

    FOREIGN KEY ( campusName ) REFERENCES Campus( name )
) ENGINE=INNODB;

CREATE TABLE Room
(
    ID              INT NOT NULL,
    buildingID      VARCHAR( 2 ) NOT NULL,

    PRIMARY KEY ( ID, buildingID ),

    FOREIGN KEY ( buildingID ) REFERENCES Building ( ID )
) ENGINE=INNODB;

-- ISA to Room.
CREATE TABLE Classroom
(
    ID              INT NOT NULL,
    buildingID      VARCHAR( 2 ) NOT NULL,
    capacity        INT NOT NULL,

    PRIMARY KEY ( ID, buildingID ),

    FOREIGN KEY ( ID, buildingID ) REFERENCES Room ( ID, buildingID )
) ENGINE=INNODB;

-- ISA to Room.
CREATE TABLE Lab
(
    ID              INT NOT NULL,
    buildingID      VARCHAR( 2 ) NOT NULL,
    capacity        INT NOT NULL,

    PRIMARY KEY ( ID, buildingID ),

    FOREIGN KEY ( ID, buildingID ) REFERENCES Room ( ID, buildingID )
) ENGINE=INNODB;

-- ISA to Room.
CREATE TABLE Office
(
    ID              INT NOT NULL,
    buildingID      VARCHAR( 2 ) NOT NULL,

    PRIMARY KEY ( ID, buildingID ),

    FOREIGN KEY ( ID, buildingID ) REFERENCES Room ( ID, buildingID )
) ENGINE=INNODB;

-- ISA to Room.
CREATE TABLE ConferenceRoom
(
    ID              INT NOT NULL,
    buildingID      VARCHAR( 2 ) NOT NULL,

    PRIMARY KEY ( ID, buildingID ),

    FOREIGN KEY ( ID, buildingID ) REFERENCES Room ( ID, buildingID )
) ENGINE=INNODB;

CREATE TABLE Facilities
(
    type            ENUM( "Projector", "Computers", "Other", "None" ),

    PRIMARY KEY ( type )
) ENGINE=INNODB;

CREATE TABLE RoomEquipment
(
    roomID          INT NOT NULL,
    buildingID      VARCHAR( 2 ) NOT NULL,
    equipmentType   ENUM( "Projector", "Computers", "Other", "None" ),

    FOREIGN KEY ( roomID, buildingID ) REFERENCES Room ( ID, buildingID ),
    FOREIGN KEY ( equipmentType ) REFERENCES Facilities( type )
) ENGINE=INNODB;

CREATE TABLE Department
(
    ID              INT NOT NULL,
    name            VARCHAR( 128 ) NOT NULL,

    PRIMARY KEY ( ID )
) ENGINE=INNODB;