DROP TABLE IF EXISTS Classroom;
DROP TABLE IF EXISTS Lab;
DROP TABLE IF EXISTS ConferenceRoom;
DROP TABLE IF EXISTS Office;
DROP TABLE IF EXISTS Room;
DROP TABLE IF EXISTS Building;
DROP TABLE IF EXISTS Campus;

CREATE TABLE Campus
(
    name        VARCHAR( 128 ) NOT NULL,

    PRIMARY KEY ( name )
) ENGINE=INNODB;

CREATE TABLE Building
(
    ID          VARCHAR( 2 ) NOT NULL,
    campusName  VARCHAR( 128 ) NOT NULL,

    PRIMARY KEY ( ID ),

    FOREIGN KEY ( campusName ) REFERENCES Campus( name )
) ENGINE=INNODB;

CREATE TABLE Room
(
    ID          INT NOT NULL,
    buildingID  VARCHAR( 2 ) NOT NULL,

    PRIMARY KEY ( ID, buildingID ),

    FOREIGN KEY ( buildingID ) REFERENCES Building ( ID )
) ENGINE=INNODB;

-- ISA to Room.
CREATE TABLE Classroom
(
    ID          INT NOT NULL,
    buildingID  VARCHAR( 2 ) NOT NULL,
    capacity    INT NOT NULL,

    PRIMARY KEY ( ID, buildingID ),

    FOREIGN KEY ( ID, buildingID ) REFERENCES Room ( ID, buildingID )
) ENGINE=INNODB;

-- ISA to Room.
CREATE TABLE Lab
(
    ID          INT NOT NULL,
    buildingID  VARCHAR( 2 ) NOT NULL,
    capacity    INT NOT NULL,

    PRIMARY KEY ( ID, buildingID ),

    FOREIGN KEY ( ID, buildingID ) REFERENCES Room ( ID, buildingID )
) ENGINE=INNODB;

-- ISA to Room.
CREATE TABLE Office
(
    ID          INT NOT NULL,
    buildingID  VARCHAR( 2 ) NOT NULL,

    PRIMARY KEY ( ID, buildingID ),

    FOREIGN KEY ( ID, buildingID ) REFERENCES Room ( ID, buildingID )
) ENGINE=INNODB;

-- ISA to Room.
CREATE TABLE ConferenceRoom
(
    ID          INT NOT NULL,
    buildingID  VARCHAR( 2 ) NOT NULL,

    PRIMARY KEY ( ID, buildingID ),

    FOREIGN KEY ( ID, buildingID ) REFERENCES Room ( ID, buildingID )
) ENGINE=INNODB;