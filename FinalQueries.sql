-- i. Create/Delete/Edit/Display a faculty member.
-- CREATES a faculty member who is an instructor in the Computer Science department. 
INSERT INTO FullFaculty VALUES(41, "Greg", "Butcher");
INSERT INTO Degree VALUES("Computer Science", "Concordia University", 2018);
INSERT INTO FacultyDegree VALUES(41, "Computer Science", "Concordia University", 2018);
INSERT INTO Instructor VALUES(41, 1);
-- EDITS the faculty member's name
UPDATE FullFaculty 
SET 
    firstName = 'Craig',
    lastName = 'Boucher'
WHERE
    facultyID = 41;
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
    ff.facultyID = 41;  
-- DELETES the created faculty member
DELETE FROM Instructor WHERE instructorID = 41; 
DELETE FROM FacultyDegree WHERE facultyID = 41; 
DELETE FROM Degree WHERE degreeName = "Computer Science" AND schoolName="Concordia University" AND year=2018;
DELETE FROM FullFaculty WHERE facultyID = 41; 

-- ii. Create/Delete/Edit/Display a Student.

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

/*ix. Get the details of all the courses offered by a specific department for a
specific term. Details include Course name, section, room location, start
and end time, professor teaching the course, max class capacity and
number of enrolled students.*/

/*x. Find ID, first name and last name of all the students who are enrolled in a
specific program in a given term. */

/*xi. Find the name of all the instructors who taught a given course on a
specific term.*/

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
