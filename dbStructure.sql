DROP TABLE IF EXISTS StudentCourses;
DROP TABLE IF EXISTS StudentProgram;
DROP TABLE IF EXISTS GraduateStudent;
DROP TABLE IF EXISTS UnderGraduateStudent;
DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Section;
DROP TABLE IF EXISTS Term;
DROP TABLE IF EXISTS CourseProgram;
DROP TABLE IF EXISTS Course;
DROP TABLE IF EXISTS Program;
DROP TABLE IF EXISTS Chairman;
DROP TABLE IF EXISTS Instructor;
DROP TABLE IF EXISTS Department;
DROP TABLE IF EXISTS FacultyDegree;
DROP TABLE IF EXISTS Publication;
DROP TABLE IF EXISTS Employment;
DROP TABLE IF EXISTS Award;
DROP TABLE IF EXISTS Degree;
DROP TABLE IF EXISTS FullFaculty;
DROP TABLE IF EXISTS Facilities;
DROP TABLE IF EXISTS ConferenceRoom;
DROP TABLE IF EXISTS Office;
DROP TABLE IF EXISTS Lab;
DROP TABLE IF EXISTS Classroom;
DROP TABLE IF EXISTS Room;
DROP TABLE IF EXISTS Building;
DROP TABLE IF EXISTS Campus;

CREATE TABLE Campus (
    campusName VARCHAR(128) NOT NULL,
    PRIMARY KEY (campusName)
)  ENGINE=INNODB;

CREATE TABLE Building (
    buildingID VARCHAR(2) NOT NULL,
    campusName VARCHAR(128) NOT NULL,
    address VARCHAR(128) NOT NULL,
    floors INT NOT NULL,
    roomPerFloor INT NOT NULL,
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

CREATE TABLE Facilities (
    roomID INT NOT NULL,
    buildingID VARCHAR(2) NOT NULL,
    type ENUM('Projector', 'Computers', 'Other'),
    PRIMARY KEY (roomID , buildingID),
    FOREIGN KEY (roomID , buildingID)
        REFERENCES Room (roomID , buildingID)
)  ENGINE=INNODB;

CREATE TABLE FullFaculty (
    facultyID INT AUTO_INCREMENT NOT NULL,
    firstName VARCHAR(128) NOT NULL,
    lastName VARCHAR(128) NOT NULL,
    PRIMARY KEY ( facultyID )
) ENGINE=INNODB;

CREATE TABLE Degree (
    degreeName VARCHAR( 128 ) NOT NULL,
    schoolName VARCHAR( 128 ) NOT NULL,
    year INT NOT NULL,
    PRIMARY KEY ( degreeName, schoolName, year )
) ENGINE=INNODB;

CREATE TABLE Award (
    awardName VARCHAR( 128 ) NOT NULL,
    year INT NOT NULL,
    PRIMARY KEY ( awardName, year )
) ENGINE=INNODB;

CREATE TABLE Publication (
    publicationName VARCHAR( 128 ) NOT NULL,
    year INT NOT NULL,
    PRIMARY KEY ( publicationName, year )
) ENGINE=INNODB;

CREATE TABLE Employment (
    title VARCHAR( 128 ) NOT NULL,
    employer VARCHAR( 128 ) NOT NULL,
    startDate DATE NOT NULL,
    endDate DATE NOT NULL,
    PRIMARY KEY ( title, employer )
) ENGINE=INNODB;

CREATE TABLE FacultyDegree (
    facultyID INT AUTO_INCREMENT NOT NULL,
    degreeName VARCHAR(128) NOT NULL,
    schoolName VARCHAR(128) NOT NULL,
    year INT NOT NULL,
    PRIMARY KEY (degreeName , schoolName , year),
    FOREIGN KEY (degreeName, schoolName, year )
        REFERENCES Degree( degreeName, schoolName, year ),
    FOREIGN KEY (facultyID)
        REFERENCES FullFaculty (facultyID)
)  ENGINE=INNODB;

CREATE TABLE Department (
    departmentID INT NOT NULL,
    departmentName VARCHAR(128) NOT NULL,
    PRIMARY KEY (departmentID)
)  ENGINE=INNODB;

CREATE TABLE Instructor (
    instructorID INT AUTO_INCREMENT NOT NULL,
	departmentID INT NOT NULL,
    PRIMARY KEY (instructorID),
    FOREIGN KEY (instructorID)
        REFERENCES FullFaculty (facultyID),
    FOREIGN KEY (departmentID)
        REFERENCES Department (departmentID)
)  ENGINE=INNODB;

CREATE TABLE Chairman (
    chairmanID INT AUTO_INCREMENT NOT NULL,
    departmentID INT NOT NULL,
    PRIMARY KEY (chairmanID),
    FOREIGN KEY (chairmanID)
        REFERENCES FullFaculty (facultyID),
    FOREIGN KEY (departmentID)
        REFERENCES Department (departmentID)
)  ENGINE=INNODB;

CREATE TABLE Program (
    programID INT AUTO_INCREMENT NOT NULL,
    programName CHAR(128) NOT NULL,
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
    PRIMARY KEY (courseID),
    FOREIGN KEY (departmentID)
        REFERENCES Department (departmentID)
)  ENGINE=INNODB;

CREATE TABLE CourseProgram (
    programID INT NOT NULL,
    courseID VARCHAR(8) NOT NULL,
    PRIMARY KEY (programID , courseID),
    FOREIGN KEY (courseID)
        REFERENCES Course (courseID),
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
    sectionID VARCHAR(2) NOT NULL,
    termID INT NOT NULL,
    instructorID INT NOT NULL,
    roomID INT NOT NULL,
    buildingID VARCHAR(2) NOT NULL,
    PRIMARY KEY (courseID , sectionID, termID ),
    FOREIGN KEY (courseID)
        REFERENCES Course (courseID),
    FOREIGN KEY (termID)
        REFERENCES Term (termID),
    FOREIGN KEY (InstructorID)
        REFERENCES Instructor (instructorID),
    FOREIGN KEY (roomID , buildingID)
        REFERENCES Classroom (classroomID , buildingID)
)  ENGINE=INNODB;

CREATE TABLE Student (
    studentID INT AUTO_INCREMENT NOT NULL,
    firstName VARCHAR(128) NOT NULL,
    lastName VARCHAR(128) NOT NULL,
    email VARCHAR(128) NOT NULL,
    phone INT(9),
    dateOfBirth DATE NOT NULL,
    PRIMARY KEY (studentID)
)  ENGINE=INNODB;

CREATE TABLE UnderGraduateStudent (
    studentID INT AUTO_INCREMENT NOT NULL,
    gpa DECIMAL(3 , 2 ) NOT NULL DEFAULT 0.00,
    PRIMARY KEY (studentID),
    FOREIGN KEY (studentID)
        REFERENCES Student (studentID)
)  ENGINE=INNODB;

CREATE TABLE GraduateStudent (
    studentID INT AUTO_INCREMENT NOT NULL,
    gpa DECIMAL(3 , 2 ) NOT NULL DEFAULT 0.00,
    PRIMARY KEY (studentID),
    FOREIGN KEY (studentID)
        REFERENCES Student (studentID)
)  ENGINE=INNODB;

CREATE TABLE StudentProgram (
    studentID INT NOT NULL,
    programID INT NOT NULL,
	PRIMARY KEY (studentID , programID),
    FOREIGN KEY (studentID)
        REFERENCES Student (studentID),
    FOREIGN KEY (programID)
        REFERENCES Program (programID)
)  ENGINE=INNODB;

CREATE TABLE StudentCourses (
    studentID INT NOT NULL,
    courseID VARCHAR(8) NOT NULL,
    sectionID VARCHAR(2) NOT NULL,
    termID INT NOT NULL,
	PRIMARY KEY (studentID , courseID, sectionID, termID),
    FOREIGN KEY (studentID)
        REFERENCES Student (studentID),
    FOREIGN KEY (courseID , sectionID, termID)
        REFERENCES Section (courseID , sectionID, termID)
)  ENGINE=INNODB;