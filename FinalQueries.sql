-- i. Create/Delete/Edit/Display a faculty member.
-- CREATES a faculty member who is an instructor in the Computer Science department. 
INSERT INTO FullFaculty VALUES(71, "Greg", "Butcher");
INSERT INTO FacultyDegree VALUES(71, "Computer Science", "Cambridge", 1987);
INSERT INTO Instructor VALUES(71, 1);
-- EDITS the faculty member's name
UPDATE FullFaculty 
SET 
    firstName = 'Craig',
    lastName = 'Boucher'
WHERE
    facultyID = 71;
-- DISPLAYS the created faculty member
SELECT 
    ff.facultyID AS 'Faculty ID',
    CONCAT(firstName, ' ', lastName) AS 'Name',
    CONCAT(degreeName, ', ', year) AS 'Degree',
    d.departmentName AS 'Department'
FROM
    FullFaculty ff
        JOIN
    FacultyDegree fd ON (ff.facultyID = fd.facultyID)
        JOIN
    Instructor i ON (ff.facultyID = i.instructorID)
        JOIN
    Department d ON (d.departmentID = i.departmentID)
WHERE
    ff.facultyID = 71;  
-- DELETES the created faculty member

DELETE FROM FullFaculty WHERE facultyID = 71; 

SELECT * FROM Instructor; 
SELECT * FROM FacultyDegree; 
SELECT * FROM Degree;
SELECT * FROM FullFaculty;

-- ii. Create/Delete/Edit/Display a Student.
--sin is not adde. phone number must be checked for formating 
-- CREATES a Student who is an undergrad in the Computer Applications program.
INSERT INTO Student(studentID,firstName,lastName,email,phone,dateOfBirth) VALUES ('1','Tom','Smith','tomsmith@gmail.com',5147546695,'1995-03-09');
INSERT INTO StudentProgram(studentID,programID) VALUES ('1','1');
INSERT INTO UnderGraduateStudent(studentID) VALUES ('1');

-- EDITS the student's name
UPDATE Student 
SET 
    firstName = 'Steave',
    lastName = 'Kith'
WHERE
    studentID = '1';
    

-- DISPLAYS the created student
SELECT 
    s.studentID AS 'Student ID',
    CONCAT(s.firstName, ' ', s.lastName) AS 'Name',
    u.gpa AS 'gpa',
    p.programName AS 'Program Name'
FROM
    Student s
        JOIN
    StudentProgram sp ON (s.studentID = sp.studentID)
        JOIN
	Program p ON (p.programID = sp.programID)
        JOIN
    UnderGraduateStudent u ON (s.studentID = u.studentID)
WHERE
    s.studentID = '1';  
    
-- DELETES the created student
DELETE FROM StudentProgram WHERE studentID = '1'; 
DELETE FROM UnderGraduateStudent WHERE studentID = '1'; 
DELETE FROM Student WHERE studentID = '1';

-- iii. Create/Delete/Edit/Display a Teaching Assistant

-- iv. Give a list of all campuses.
SELECT campusName AS 'Campus Name' FROM Campus;

-- v. Give a list of buildings on a given campus.
SELECT *
FROM 
	Building b
WHERE
	campusName = 'SGW';

/* vi. Give details of a specific building (this include address of the building,
number of floors, number of rooms in each floor, and details of each room
such as room type, capacity of the room and existing facilities in the room
if it is a classroom or a lab. */
SELECT 
    b.buildingID AS 'Building Name',
    campusName AS 'Campus Name',
    address AS 'Address',
    floors AS 'Floor',
    roomPerFloor,
    r.roomID,
    CASE
        WHEN l.buildingID IS NOT NULL THEN 'Lab'
        WHEN clr.buildingID IS NOT NULL THEN 'ClassRoom'
        WHEN cr.buildingID IS NOT NULL THEN 'ConferenceRoom'
        WHEN of.buildingID IS NOT NULL THEN 'Office'
    END AS ROOMTYPE,
    type AS 'Facilities'
FROM
    Building b
        JOIN
    Room r ON (r.buildingID = b.buildingID)
        LEFT JOIN
    Classroom clr ON (b.buildingID = clr.buildingID)
        LEFT JOIN
    Facilities f ON (b.buildingID = f.buildingID)
        LEFT JOIN
    Lab l ON (b.buildingID = l.buildingID)
        LEFT JOIN
    ConferenceRoom cr ON (b.buildingID = cr.buildingID)
        LEFT JOIN
    Office of ON (b.buildingID = of.buildingID)
ORDER BY campusName , floors , roomPerFloor , r.roomID;


/*vii. Get a list of all programs available in a specific department along with the
number of credits required for completion in each program. */

SELECT departmentName, programName, programType, programCredits
FROM Program p
	JOIN 
    Department d ON (p.departmentID = d.departmentID);

-- viii. Get a list of all courses offered in a given term by a specific program.
SELECT c.courseName
FROM Course c
JOIN CourseProgram cp ON (c.courseID=cp.courseID)
JOIN Section s ON (c.courseID=s.courseID)
WHERE s.termID='1' AND cp.programID='40';


/*ix. Get the details of all the courses offered by a specific department for a
specific term. Details include Course name, section, room location, start
and end time, professor teaching the course, max class capacity and
number of enrolled students.*/

-- Unlikely to work with very large sample sizes (probably returns duplicates), but will work for now.
SELECT s.termID, d.departmentName, f.firstName AS 'Instructor First Name', f.lastName AS 'Instructor Last Name', c.courseName, s.buildingID, s.roomID, t.startTime, t.endTime, r.capacity, COUNT(DISTINCT sc.studentID) AS 'Number Enrolled'
FROM Section s
	JOIN Classroom r ON (r.classroomID = s.roomID)
    JOIN Course c on (s.courseID = c.courseID)
    JOIN Department d on (c.departmentID = d.departmentID)
    JOIN FullFaculty f on (f.facultyID = s.instructorID)
    JOIN TimeSlot t on (t.timeID = s.timeID)
    JOIN StudentCourses sc on (sc.termID = s.termID)
WHERE s.termID=1 AND s.courseID = "COMP248"; -- term and course can be chosen

/*x. Find ID, first name and last name of all the students who are enrolled in a
specific program in a given term. */

/*xi. Find the name of all the instructors who taught a given course on a
specific term.*/

SELECT  s.termID, f.firstName, f.lastName, s.courseID
FROM Section s
JOIN FullFaculty f ON (f.facultyID=s.instructorID)
WHERE s.termID=1 AND s.courseID = "COMP248"; -- term and course can be chosen

-- xii. Give a list of all supervisors in a given department.


-- xiii. Give a list of all the advisors in a given department.

SELECT
	departmentName,
	firstName,
    lastName
FROM
	Advisor a
	JOIN
		Program p
        ON a.programID = p.programID
WHERE
	departmentID = 1;
	
    
/*xiv. Find the name and IDs of all the graduate students who are supervised by
a specific Professor.*/

/*xv. Find the ID, name and assignment mandate of all the graduate students
who are assigned as teaching assistants to a specific course on a given
term.*/

/*xvi. Find the name, IDs and total amount of funds received by all the graduate
students who received research funds in a given term.*/

/*xvii. For each department, find the total number of courses offered by the
department and the name of its chairman.*/
SELECT 
    d.departmentName,
    CONCAT(ff.firstName, ' ', ff.lastName) AS ChairPerson,
    (SELECT 
            COUNT(cs.departmentID)
        FROM
            Course cs
        WHERE
            cs.departmentID = d.departmentID) AS NumberOfCourseOffered
FROM
    Department d
        LEFT JOIN
    Chairman c ON (d.departmentID = c.departmentID)
        LEFT JOIN
    FullFaculty ff ON (c.chairmanID = ff.facultyID);
/*xviii. For each program, find the total number of students enrolled into the
program.*/

SELECT 
    p.programName, COUNT(studentID) AS StudentsEnrolled
FROM
    StudentProgram sp
        JOIN
    Program p ON (sp.programID = p.programID)
GROUP BY sp.programID;

-- xix. Give a list of courses taken by a specific student in a given term.

SELECT 
    sc.studentID, GROUP_CONCAT(CONCAT(sc.courseID)) AS Courses
FROM
    StudentCourses sc
GROUP BY sc.studentID , termID;


-- xx. Register a student in a specific course.

-- xxi. Drop a course for a specific student.

/*xxii. Give a detailed report for a specific student (This include personal data,
academic history, courses taken and grades received for each course,
GPA, etc.)*/
