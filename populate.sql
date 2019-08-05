INSERT INTO Campus VALUES
 -- campusName
 ("Loyola"),
 ("SGW");
 
 INSERT INTO Building VALUES
 -- buildingID , campusName, address, floors, roomsPerFloor
 ("MB", "SGW", "1455 Blvd De Maissonneuve W", 12, 30),
 ("HH", "SGW", "1455 Blvd De Maissonneuve W", 15, 32),
 ("FG", "SGW", "1455 Blvd De Maissonneuve W", 10, 50),
 ("EV", "SGW",  "1455 Blvd De Maissonneuve W", 12, 70),
 ("LB","SGW", "1455 Blvd De Maissonneuve W", 9, 70),
 ("AD", "Loyola", "7141 Sherbrooke W", 8, 60),
 ("PY", "Loyola", "7141 Sherbrooke W", 12, 40),
 ("SH", "Loyola", "7141 Sherbrooke W", 10, 100),
 ("TA", "Loyola", "7141 Sherbrooke W", 9, 90),
 ("VL", "Loyola", "7141 Sherbrooke W", 7,  65);

 /*INSERT INTO Classroom VALUES
 -- roomID, buildingID, capacity
  (406, "MB", 50),
  (326, "HH", 100),
  (246, "AD", 25),
  (1236, "PY", 69),
  (631, "FG", 120);
  
 INSERT INTO Lab VALUES
 -- labID, buildingID, capacity
(1024, "MB", 50),
(1126, "HH", 25),
(557, "AD", 35),
(507, "PY", 69),
(668, "SH", 50);
 
 INSERT INTO Office VALUES
 -- officeID, buildingID
(845, "FG"),
(969, "EV"),
(753, "LB"),
(562, "TA"),
(361, "VL");

 INSERT INTO ConferenceRoom VALUES
 -- conferenceRoomID, buildingID
(302, "EV"),
(567, "LB"),
(789, "TA"),
(603, "VL"),
(897, "SH");

INSERT INTO Facilities VALUES
-- roomID, buildingID, type
(406, "MB", "Projector"),
(326, "HH", "Projector"),
(246, "AD", "Computers"),
(1236, "PY", "other"),
(631, "FG", "Projector"),
(1024, "MB", "Computers"),
(1126, "HH", "Computers"),
(557, "AD", "Projector"),
(507, "PY", "other"),
(668, "SH", "Computers"),
(845, "FG", "other"),
(969, "EV", "Computers"),
(753, "LB", "Computers"),
(562, "TA", "Computers"),
(361, "VL", "Projector"); */

INSERT INTO FullFaculty VALUES 
    -- facultyID, firstName, lastName
(1, "Emily", "Bisel"),
(2, "Monika", "Acord"),
(3, "Virginie", "Birdsell"),
(4, "Bevvy", "Altherr"),
(5, "Sheryl", "Affinito"),
(6, "Karine", "Aber"),
(7, "Torey", "Allam"),
(8, "Karie", "Bink"),
(9, "Nona", "Belcastro"),
(10, "Flossi", "Beitel"),
(11, "Netty", "Akina"),
(12, "Marie", "Ambler"),
(13, "Ashly", "Albany"),
(14, "Inessa", "Acres"),
(15, "Bette-Ann", "Addie"),
(16, "Fancie", "Barnette"),
(17, "Edie", "Ahmed"),
(18, "Bobina", "Acri"),
(19, "Cherianne", "Agramonte"),
(20, "Dina", "Balstad"),
(21, "Antonietta", "Allee"),
(22, "Belinda", "Babb"),
(23, "Lauri", "Barie"),
(24, "Trix", "Alfonso"),
(25, "Jaclyn", "Albanese"),
(26, "Jandy", "Akeley"),
(27, "Dorri", "Adelson"),
(28, "Opaline", "Allington"),
(29, "Vicki", "Bargar"),
(30, "Arabel", "Allred"),
(31, "Buffy", "Alejos"),
(32, "Annis", "Abt"),
(33, "Robinett", "Belding"),
(34, "Selma", "Ambrosio"),
(35, "Vitia", "Balzano"),
(36, "Madge", "Almgren"),
(37, "Letizia", "Bari"),
(38, "Chelsae", "Beiter"),
(39, "Delphinia", "Akel"),
(40, "Alberta", "Abram");

INSERT INTO Degree VALUES

   --  degreeName, schoolName, year
   
   ("Economics", "Oxford", 1978),
   ("Computer Science", "Oxford", 1986),
   ("Civil Engineering", "Oxford", 1994),
   ("Mathematics", "Oxford", 2002),
   ("Journalism", "Oxford", 2010),
   ("Economics", "Cambridge", 1979),
   ("Computer Science", "Cambridge", 1987),
   ("Civil Engineering", "Cambridge", 1995),
   ("Mathematics", "Cambridge", 2003),
   ("Journalism", "Cambridge", 2011),
  ("Economics", "Yale", 1980),
   ("Computer Science", "Yale", 1988),
   ("Civil Engineering", "Yale", 1996),
   ("Mathematics", "Yale", 2004),
   ("Journalism", "Yale", 2012),
  ("Economics", "Harvard", 1981),
   ("Computer Science", "Harvard", 1989),
   ("Civil Engineering", "Harvard", 1997),
   ("Mathematics", "Harvard", 2005),
   ("Journalism", "Harvard", 2013),
  ("Economics", "Undisputed University of Rhaganomics", 1982),
   ("Computer Science", "Undisputed University of Rhaganomics", 1990),
   ("Civil Engineering", "Undisputed University of Rhaganomics", 1998),
   ("Mathematics", "Undisputed University of Rhaganomics", 2006),
   ("Journalism", "Undisputed University of Rhaganomics", 2014),
  ("Economics", "Massachussets Institute of Technology", 1983),
   ("Computer Science", "Massachussets Institute of Technology", 1991),
   ("Civil Engineering", "Massachussets Institute of Technology", 1999),
   ("Mathematics", "Massachussets Institute of Technology", 2007),
   ("Journalism", "Massachussets Institute of Technology", 2015),
  ("Economics", "Georgetown", 1984),
   ("Computer Science", "Georgetown", 1992),
   ("Civil Engineering", "Georgetown", 2000),
   ("Mathematics", "Georgetown", 2008),
   ("Journalism", "Georgetown", 2016),
 ("Economics", "Concordia University", 1985),
   ("Computer Science", "Concordia University", 1993),
   ("Civil Engineering", "Concordia University", 2001),
   ("Mathematics", "Concordia University", 2009),
   ("Journalism", "Concordia University", 2017);

INSERT INTO Award VALUES
   -- awardName, year
   
  ("Deutsche Bank Prize in Financial Economics", 1980),
  ("Deutsche Bank Prize in Financial Economics", 1981),
  ("Deutsche Bank Prize in Financial Economics", 1982),
  ("Deutsche Bank Prize in Financial Economics", 1983),
  ("Deutsche Bank Prize in Financial Economics", 1984),
  ("Deutsche Bank Prize in Financial Economics", 1985),
  ("Deutsche Bank Prize in Financial Economics", 1986),
  ("Deutsche Bank Prize in Financial Economics", 1987),
  ("Turing Award", 1988),
  ("Turing Award", 1989),
  ("Turing Award", 1990),
  ("Turing Award", 1991),
  ("Turing Award", 1992),
  ("Turing Award", 1993),
  ("Turing Award", 1994),
  ("Turing Award", 1995),
  ("Engineering Gold Medal", 1996),
  ("Engineering Gold Medal", 1997),
  ("Engineering Gold Medal", 1998),
  ("Engineering Gold Medal", 1999),
  ("Engineering Gold Medal", 2000),
  ("Engineering Gold Medal", 2001),
  ("Engineering Gold Medal", 2002),
  ("Engineering Gold Medal", 2003),
  ("Nobel Pize in Mathematics", 2004),
  ("Nobel Pize in Mathematics", 2005),
  ("Nobel Pize in Mathematics", 2006),
  ("Nobel Pize in Mathematics", 2007),
  ("Nobel Pize in Mathematics", 2008),
  ("Nobel Pize in Mathematics", 2009),
  ("Nobel Pize in Mathematics", 2010),
  ("Nobel Pize in Mathematics", 2011),
  ("Pulitzer Award", 2012),
  ("Pulitzer Award", 2013),
  ("Pulitzer Award", 2014),
  ("Pulitzer Award", 2015),
  ("Pulitzer Award", 2016),
  ("Pulitzer Award", 2017),
  ("Pulitzer Award", 2018),
  ("Pulitzer Award", 2019);

INSERT INTO Publication VALUES
   -- publicationName, year 
  
  ("Journal of International Economics", 1979),
  ("Journal of International Economics", 1980),
  ("Journal of International Economics", 1981),
  ("Journal of International Economics", 1982),
  ("Journal of International Economics", 1983),
  ("Journal of International Economics", 1984),
  ("Journal of International Economics", 1985),
  ("Journal of International Economics", 1986),
  ("The Journal of Supercomputing", 1987),
  ("The Journal of Supercomputing", 1988),
  ("The Journal of Supercomputing", 1989),
  ("The Journal of Supercomputing", 1990),
  ("The Journal of Supercomputing", 1991),
  ("The Journal of Supercomputing", 1992),
  ("The Journal of Supercomputing", 1993),
  ("The Journal of Supercomputing", 1994),
  ("Canadian Journal of Civil Engineering", 1995),
  ("Canadian Journal of Civil Engineering", 1996),
  ("Canadian Journal of Civil Engineering", 1997),
  ("Canadian Journal of Civil Engineering", 1998),
  ("Canadian Journal of Civil Engineering", 1999),
  ("Canadian Journal of Civil Engineering", 2000),
  ("Canadian Journal of Civil Engineering", 2001),
  ("Canadian Journal of Civil Engineering", 2002),
  ("Advances in Mathematics", 2003),
  ("Advances in Mathematics", 2004),
  ("Advances in Mathematics", 2005),
  ("Advances in Mathematics", 2006),
  ("Advances in Mathematics", 2007),
  ("Advances in Mathematics", 2008),
  ("Advances in Mathematics", 2009),
  ("Advances in Mathematics", 2010),
  ("Time Magazine", 2011),
  ("Time Magazine", 2012),
  ("Time Magazine", 2013),
  ("Time Magazine", 2014),
  ("Time Magazine", 2015),
  ("Time Magazine", 2016),
  ("Time Magazine", 2017),
  ("Time Magazine", 2018);
  

INSERT INTO Employment VALUES
    -- title, employer, startDate, endDate 
    
    ("Credit Analyst", "TD Bank", "1981-02-12", "1983-05-16"),
    ("Financial Analyst", "JP Morgan", "1982-03-26", "1984-05-05" ),
    ("Actuary", "Lehmann Brothers", "1983-04-02", "1985-12-03" ),
    ("Operations Research Analyst", "AON Insurance", "1984-05-23", "1986-11-12" ),
    ("Credit Analyst", "Auto Loans Approved", "1985-06-25", "1987-01-06"  ),
    ("Financial Analyst", "Recession Rescuers", "1986-07-31", "1988-04-14" ),
    ("Actuary", "Ponzi Incorporated", "1987-08-19","1989-06-15"),
    ("Operations Research Analyst", "Capitolisto Communisto", "1988-09-28", "1990-06-30"),

    ("Junior Software Developer", "Microsoft", "1989-01-30", "1991-12-26"),
    ("Junior Web Developer", "YourArea", "1990-02-28", "1992-05-14"),
    ("Database Administrator", "I_BOMB_EM", "1991-03-25", "1993-02-12"),
    ("Information Security Analyst", "Wacka Hacka Inc", "1992-04-03", "1994-07-19"),
    ("Junior Software Developer", "Sony Inc", "1993-05-06", "1995-12-03" ),
    ("Junior Web Developer", "AskJeeves.com", "1994-06-02", "1996-01-09"),
    ("Database Administrator", "DataMine Limited", "1995-12-03", "1997-05-13"),
    ("Information Security Analyst", "Incription Solutions", "1996-08-25", "1998-11-11"),
    
    ("Application Engineer", "Sopranos Construction", "1997-01-30", "1999-12-26"),
    ("Structural Engineer", "GoodFellas Inc", "1998-02-28", "2000-05-14"),
    ("Hydraulic Engineer", "Cheap Buildings Limited", "1999-03-25", "2001-02-12"),
    ("Chief Engineering Officer", "Collapsico & Co", "2000-04-03", "2002-07-19"),
    ("Application Engineer", "Six Pence Structures", "2001-05-06", "2003-10-06"),
    ("Structural Engineer", "Gambino Gondolas", "2002-06-02", "2004-01-09"),
    ("Hydraulic Engineer", "Metal Gear Development", "2003-07-22", "2005-08-23"),
    ("Chief Engineering Officer", "Build & Chill Inc", "2004-08-16",  "2006-12-22"),
    
    ("Numerical Analyst", "Numerico", "2005-01-03", "2007-12-24"),
    ("External Auditor", "Digitize Inc", "2006-02-28", "2008-05-14"),
    ("Statistician", "Statistico", "2007-03-25", "2009-02-12"),
    ("Rate Analyst", "Checkout Limited", "2008-04-03", "2010-07-19"),
    ("Numerical Analyst", "ArcTanalysts Inc", "2009-05-06", "2011-10-06"),
    ("External Auditor", "SinSenses Ltd", "2010-06-02", "2012-01-09" ),
    ("Statistician", "CosCurrent & Co", "2011-07-22", "2013-08-23"),
    ("Rate Analyst", "Much & More", "2012-08-16", "2006-12-22"),
    
    ("Copywriter", "Zero Sales Advertising", "2013-01-03", "2015-12-24"),
    ("Editor", "You Zork Chronicles", "2014-02-28", "2016-05-14"),
    ("Sports Writer", "Rumor Mill Daily", "2015-03-25", "2017-02-12"),
    ("Press Officer", "Scuderia Torro Rosso", "2016-04-03", "2018-07-19"),
    ("Copywriter", "Clickbait Inc", "2017-05-06", "2019-10-06"),
    ("Editor", "No One Reads Publishing", "2018-06-02", "2020-01-09" ),
    ("Sports Writer", "Chip Chipperson Media House", "2019-07-22", "2021-08-23"),
    ("Press Officer", "Newcastle United", "2020-08-16", "2022-12-22");


INSERT INTO FacultyDegree VALUES
   -- facultyID, degreeName, schoolName, year
	
    (1, "Economics", "Oxford", 1978),
   (2, "Computer Science", "Oxford", 1986),
   (3, "Civil Engineering", "Oxford", 1994),
   (4, "Mathematics", "Oxford", 2002),
   (5, "Journalism", "Oxford", 2010),
   (6, "Economics", "Cambridge", 1979),
   (7, "Computer Science", "Cambridge", 1987),
   (8, "Civil Engineering", "Cambridge", 1995),
   (9, "Mathematics", "Cambridge", 2003),
   (10, "Journalism", "Cambridge", 2011),
   (11, "Economics", "Yale", 1980),
   (12, "Computer Science", "Yale", 1988),
   (13, "Civil Engineering", "Yale", 1996),
   (14, "Mathematics", "Yale", 2004),
   (15, "Journalism", "Yale", 2012),
   (16, "Economics", "Harvard", 1981),
   (17, "Computer Science", "Harvard", 1989),
   (18, "Civil Engineering", "Harvard", 1997),
   (19, "Mathematics", "Harvard", 2005),
   (20, "Journalism", "Harvard", 2013),
   (21, "Economics", "Undisputed University of Rhaganomics", 1982),
   (22, "Computer Science", "Undisputed University of Rhaganomics", 1990),
   (23, "Civil Engineering", "Undisputed University of Rhaganomics", 1998),
   (24, "Mathematics", "Undisputed University of Rhaganomics", 2006),
   (25, "Journalism", "Undisputed University of Rhaganomics", 2014),
   (26, "Economics", "Massachussets Institute of Technology", 1983),
   (27, "Computer Science", "Massachussets Institute of Technology", 1991),
   (28, "Civil Engineering", "Massachussets Institute of Technology", 1999),
   (29, "Mathematics", "Massachussets Institute of Technology", 2007),
   (30, "Journalism", "Massachussets Institute of Technology", 2015),
   (31, "Economics", "Georgetown", 1984),
   (32, "Computer Science", "Georgetown", 1992),
   (33, "Civil Engineering", "Georgetown", 2000),
   (34, "Mathematics", "Georgetown", 2008),
   (35, "Journalism", "Georgetown", 2016),
   (36, "Economics", "Concordia University", 1985),
   (37, "Computer Science", "Concordia University", 1993),
   (38, "Civil Engineering", "Concordia University", 2001),
   (39, "Mathematics", "Concordia University", 2009),
   (40, "Journalism", "Concordia University", 2017);

INSERT INTO Department VALUES
   -- departmentID, departmentName
   
( 1, "Computer Science" ),
( 2, "Software Engineering" ),
( 3, "Building Engineering" ),
( 4, "Civil Engineering" ),
( 5, "Mathematics" ),
( 6, "Journalism" ),
( 7, "Computer Engineering" ),
( 8, "Economics" ),
( 9, "Electrical Engineering" ),
( 10, "Aerospace Engineering" );
   

INSERT INTO Instructor VALUES
  --  instructorID, departmentID 
  
   (11, 8),
   (12, 1),
   (13, 4),
   (14, 5),
   (15, 6),
   (16, 10),
   (17, 2),
   (18, 3),
   (19, 9),
   (20, 7);

INSERT INTO Chairman VALUES
   -- chairmanID, departmentID
   
   (1, 8),
   (2, 1),
   (3, 4),
   (4, 5),
   (5, 6),
   (6, 10),
   (7, 2),
   (8, 3),
   (9, 9),
   (10, 7);
   
   
INSERT INTO Program VALUES
   -- programID, programName, departmentID, programCredits
( 1, "Computer Applications", 1, 90.0),
( 2, "Computer Games", 1, 90.0 ),
( 3, "Computer Applications", 1, 44.0 ),
( 4, "Computer Games", 1, 44.0 ),
( 5, "Information Systems", 2, 90.0),
( 6, "Web Services & Applications", 2, 90.0 ),
( 7, "Information Systems", 2, 44.0 ),
( 8, "Web Services & Applications", 2, 44.0 ),
( 9, "Building Energy & Environment", 3, 90.0),
( 10, "Building Structures & Construction", 3, 90.0 ),
( 11, "Building Energy & Environment", 3, 44.0 ),
( 12, "Building Structures & Construction", 3, 44.0 ),
( 13, "Civil Infrastructure", 4, 90.0),
( 14, "Construction Engineering", 4, 90.0 ),
( 15, "Civil Infrastructure", 4, 44.0 ),
( 16, "Construction Engineering", 4, 44.0 ),
( 17, "Pure Mathematics", 5, 90.0),
( 18, "Applied Mathematics", 5, 90.0 ),
( 19, "Pure Mathematics", 5, 44.0 ),
( 20, "Applied Mathematics", 5, 44.0 ),
( 21, "Print Media", 6, 90.0),
( 22, "Corporate Journalism", 6, 90.0 ),
( 23, "Print Media", 6, 44.0 ),
( 24, "Corporate Journalism", 6, 44.0 ),
( 25, "Avionics & Embedded Systems", 7, 90.0),
( 26, "Pervasive Computing", 7, 90.0 ),
( 27, "Avionics & Embedded Systems", 7, 44.0 ),
( 28, "Pervasive Computing", 7, 44.0 ),
( 29, "Microeconomics", 8, 90.0),
( 30, "Macroeconomics", 8, 90.0 ),
( 31, "Microeconomics", 8, 44.0 ),
( 32, "Macroeconomics", 8, 44.0 ),
( 33, "Power & Renewable Energy", 9, 90.0),
( 34, "Telecommunications", 9, 90.0 ),
( 35, "Power & Renewable Energy", 9, 44.0 ),
( 36, "Telecommunications", 9, 44.0 ),
( 37, "Aerodynamics & Propulsion", 10, 90.0),
( 38, "Aerospace Structures & Materials", 10, 90.0 ),
( 39, "Aerodynamics & Propulsion", 10, 44.0 ),
( 40, "Aerospace Structures & Materials", 10, 44.0 );


/*INSERT INTO Course VALUES
    -- courseID, courseName, departmentID, courseCredits, prerequisite
   ();

INSERT INTO CourseProgram VALUES
    -- programID, courseID	
	();

INSERT INTO Term VALUES
    -- termID, termName ENUM('FALL', 'WINTER', 'SUMMER'), termYear
    
    ();
    

INSERT INTO Section VALUES
    
    -- courseID, sectionID, termID, instructorID, roomID, buildingID
    
    ();
   

INSERT INTO Student VALUES
    -- studentID, firstName, lastName, email, phone, dateOfBirth
	();

INSERT INTO UnderGraduateStudent VALUES
    -- studentID, gpa
   
   ();

INSERT INTO GraduateStudent VALUES
    -- studentID, gpa
    
    ();

INSERT INTO StudentProgram VALUES
    -- studentID, programID
	();

INSERT INTO StudentCourses VALUES
    -- studentID, courseID, sectionID, termID
    
    (); */
	
