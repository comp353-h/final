DROP TABLE IF EXISTS RoomEquipment;
DROP TABLE IF EXISTS Facilities;
DROP TABLE IF EXISTS Classroom;
DROP TABLE IF EXISTS Lab;
DROP TABLE IF EXISTS ConferenceRoom;
DROP TABLE IF EXISTS Office;
DROP TABLE IF EXISTS Room;
DROP TABLE IF EXISTS Building;
DROP TABLE IF EXISTS Campus;
DROP TABLE IF EXISTS CourseProgram;
DROP TABLE IF EXISTS ProgramAdvisor;
DROP TABLE IF EXISTS Advisor;
DROP TABLE IF EXISTS StudentProgram;
DROP TABLE IF EXISTS Program;
DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Department;
DROP TABLE IF EXISTS Section;
DROP TABLE IF EXISTS Course;
DROP TABLE IF EXISTS Term;

CREATE TABLE Campus (
    campusName VARCHAR(128) NOT NULL,
    PRIMARY KEY (campusName)
)  ENGINE=INNODB;

CREATE TABLE Building (
    buildingID VARCHAR(2) NOT NULL,
    campusName VARCHAR(128) NOT NULL,
    PRIMARY KEY (buildingID),
    FOREIGN KEY (campusName)
        REFERENCES Campus (campusName)
)  ENGINE=INNODB;

CREATE TABLE Room (
    roomID INT NOT NULL,
    buildingID VARCHAR(2) NOT NULL,
    PRIMARY KEY (roomID , buildingID),
    FOREIGN KEY (buildingID)
        REFERENCES Building (buildingID)
)  ENGINE=INNODB;

-- ISA to Room.
CREATE TABLE Classroom (
    classroomID INT NOT NULL,
    buildingID VARCHAR(2) NOT NULL,
    capacity INT NOT NULL,
    PRIMARY KEY (classroomID , buildingID),
    FOREIGN KEY (classroomID , buildingID)
        REFERENCES Room (roomID , buildingID)
)  ENGINE=INNODB;

-- ISA to Room.
CREATE TABLE Lab (
    labID INT NOT NULL,
    buildingID VARCHAR(2) NOT NULL,
    capacity INT NOT NULL,
    PRIMARY KEY (labID , buildingID),
    FOREIGN KEY (labID , buildingID)
        REFERENCES Room (roomID , buildingID)
)  ENGINE=INNODB;

-- ISA to Room.
CREATE TABLE Office (
    officeID INT NOT NULL,
    buildingID VARCHAR(2) NOT NULL,
    PRIMARY KEY (officeID , buildingID),
    FOREIGN KEY (officeID , buildingID)
        REFERENCES Room (roomID , buildingID)
)  ENGINE=INNODB;

-- ISA to Room.
CREATE TABLE ConferenceRoom (
    conferenceRoomID INT NOT NULL,
    buildingID VARCHAR(2) NOT NULL,
    PRIMARY KEY (conferenceRoomID , buildingID),
    FOREIGN KEY (conferenceRoomID , buildingID)
        REFERENCES Room (roomID , buildingID)
)  ENGINE=INNODB;

-- why do we need a key here?
CREATE TABLE Facilities (
    facilityType ENUM('Projector', 'Computers', 'Other', 'None'),
    PRIMARY KEY (facilityType)
)  ENGINE=INNODB;

CREATE TABLE RoomEquipment (
    roomID INT NOT NULL,
    buildingID VARCHAR(2) NOT NULL,
    roomEquipmentType ENUM('Projector', 'Computers', 'Others', 'None'),
    FOREIGN KEY (roomID , buildingID)
        REFERENCES Room (roomID , buildingID),
    FOREIGN KEY (roomEquipmentType)
        REFERENCES Facilities (facilityType)
)  ENGINE=INNODB;

CREATE TABLE Department (
    departmentID INT NOT NULL,
    departmentName VARCHAR(128) NOT NULL,
    PRIMARY KEY (departmentID)
)  ENGINE=INNODB;

CREATE TABLE Program (
    programID INT AUTO_INCREMENT NOT NULL,
    programName CHAR(60) NOT NULL,
    departmentID INT NOT NULL,
    programCredits DECIMAL(4 , 1 ),
    PRIMARY KEY (programID),
    FOREIGN KEY (departmentID)
        REFERENCES Department (departmentID)
)  ENGINE=INNODB;

CREATE TABLE Course (
    courseID VARCHAR(8) NOT NULL,
    courseName VARCHAR(100) NOT NULL,
    departmentID INT NOT NULL,
    courseCredits DECIMAL(4 , 1 ),
    prerequisite VARCHAR(8),
    PRIMARY KEY (courseID)
)  ENGINE=INNODB;

CREATE TABLE CourseProgram (
    courseID VARCHAR(8) NOT NULL,
    programID INT NOT NULL,
    PRIMARY KEY (courseID , programID),
    FOREIGN KEY (courseID)
        REFERENCES Course (courseID),
    FOREIGN KEY (programID)
        REFERENCES Program (programID)
)  ENGINE=INNODB;

CREATE TABLE Advisor (
    advisorID INT AUTO_INCREMENT NOT NULL,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    PRIMARY KEY (advisorID)
)  ENGINE=INNODB;

CREATE TABLE ProgramAdvisor (
    advisorID INT AUTO_INCREMENT NOT NULL,
    programID INT NOT NULL,
    PRIMARY KEY (advisorID , programID),
    FOREIGN KEY (advisorID)
        REFERENCES Advisor (advisorID),
    FOREIGN KEY (programID)
        REFERENCES Program (programID)
)  ENGINE=INNODB;

CREATE TABLE Term (
    termID INT NOT NULL,
    termName ENUM('FALL', 'WINTER', 'SUMMER') NOT NULL,
    termYear YEAR NOT NULL,
    PRIMARY KEY (termID)
)  ENGINE=INNODB;

CREATE TABLE Section (
    courseID VARCHAR(8) NOT NULL,
    sectionID VARCHAR(4),
    termID INT NOT NULL,
    startat TIME NOT NULL,
    endat TIME NOT NULL,
    PRIMARY KEY (courseID , sectionID),
    FOREIGN KEY (courseID)
        REFERENCES Course (courseID),
    FOREIGN KEY (termID)
        REFERENCES Term (termID),
    UNIQUE KEY (sectionID , courseID , startat , endat)
)  ENGINE=INNODB;


CREATE TABLE Student (
    studentID INT AUTO_INCREMENT NOT NULL,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    phone INT,
    email VARCHAR(40),
    dateOfBirth DATE NOT NULL,
--    gpa DECIMAL(3 , 2 ) NOT NULL DEFAULT 0.00,
    PRIMARY KEY (studentID)
)  ENGINE=INNODB;


CREATE TABLE StudentProgram (
    studentID INT NOT NULL,
    programID INT NOT NULL,
    FOREIGN KEY (studentID) REFERENCES Student (studentID),
    FOREIGN KEY (programID) REFERENCES Program (programID),
    UNIQUE KEY (studentID , programID)
)  ENGINE=INNODB;
