INSERT INTO Campus VALUES
 -- campusName
 ("Loyola"),
 ("SGW");
 
INSERT INTO Building VALUES
 -- buildingID , campusName, address, floors, roomsPerFloor
 ("MB", "SGW", "1455 Blvd De Maissonneuve W", 12, 3),
 ("HH", "SGW", "1455 Blvd De Maissonneuve W", 15, 3),
 ("FG", "SGW", "1455 Blvd De Maissonneuve W", 10, 5),
 ("EV", "SGW",  "1455 Blvd De Maissonneuve W", 12, 7),
 ("LB","SGW", "1455 Blvd De Maissonneuve W", 9, 7),
 ("AD", "Loyola", "7141 Sherbrooke W", 8, 9),
 ("PY", "Loyola", "7141 Sherbrooke W", 12, 10),
 ("SH", "Loyola", "7141 Sherbrooke W", 10, 10),
 ("TA", "Loyola", "7141 Sherbrooke W", 9, 6),
 ("VL", "Loyola", "7141 Sherbrooke W", 7,  7);

 INSERT INTO Classroom VALUES
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
(361, "VL", "Projector"); 

INSERT INTO FullFaculty VALUES 
    -- facultyID, firstName, lastName
(1, "Emily", "Bisel"), -- chairman of Economics
(2, "Monika", "Acord"), -- Chairman of Computer Science
(3, "Virginie", "Birdsell"), -- Chairman of Civil Engineering
(4, "Bevvy", "Altherr"), -- Chairman of Mathematics
(5, "Sheryl", "Affinito"), -- Chairman of Journalism
(6, "Karine", "Aber"), -- Chairman of Aerospace Engineering
(7, "Torey", "Allam"), -- Chairman of Software Engineering
(8, "Karie", "Bink"), -- Chairman of Building Engineering 
(9, "Nona", "Belcastro"), -- Chairman of Electrical Engineering
(10, "Flossi", "Beitel"), -- Chairman of Computer Engineering
(11, "Netty", "Akina"), -- Economics Professor
(12, "Marie", "Ambler"), -- Computer Science Professor
(13, "Ashly", "Albany"), -- Civil Engineering Professor
(14, "Inessa", "Acres"), -- Mathematics Professor
(15, "Bette-Ann", "Addie"), -- Journalism Professor
(16, "Fancie", "Barnette"), -- Aerospace Engineering Professor
(17, "Edie", "Ahmed"), -- Software Engineering Professor
(18, "Bobina", "Acri"), -- Building Engineering Professor
(19, "Cherianne", "Agramonte"), -- Electrical Engineering Professor 
(20, "Dina", "Balstad"), -- Computer Engineering Professor
(21, "Antonietta", "Allee"), -- Economics Professor
(22, "Belinda", "Babb"), -- Economics Professor
(23, "Lauri", "Barie"), -- Computer Science Professor
(24, "Trix", "Alfonso"), -- Computer Science Professor
(25, "Jaclyn", "Albanese"), -- Civil Engineering Professor
(26, "Jandy", "Akeley"), -- Civil Engineering Professor
(27, "Dorri", "Adelson"), -- Mathematics Professor
(28, "Opaline", "Allington"), -- Mathematics Professor
(29, "Vicki", "Bargar"), -- Journalism Professor
(30, "Arabel", "Allred"), -- Journalism Professor
(31, "Buffy", "Alejos"), -- Aerospace Engineering Professor
(32, "Annis", "Abt"), -- Aerospace Engineering Professor
(33, "Robinett", "Belding"), -- Software Engineering Professor
(34, "Selma", "Ambrosio"), -- Software Engineering Professor
(35, "Vitia", "Balzano"), -- Building Engineering Professor
(36, "Madge", "Almgren"), -- Building Engineering Professor
(37, "Letizia", "Bari"), -- Electrical Engineering Professor 
(38, "Chelsae", "Beiter"), -- Electrical Engineering Professor 
(39, "Delphinia", "Akel"), -- Computer Engineering Professor
(40, "Alberta", "Abram"), -- Computer Engineering Professor
(41,"Kelcie", "Aderholt"),
(42, "Biddie", "Alexis"),
(43, "Angelita", "Barney"),
(44, "Dee Dee", "Abdi"),
(45, "Candra", "Ballweg"),
(46, "Florenza", "Adami"),
(47, "Fernande", "Allis"),
(48, "Alverta", "Albino"),
(49, "Filia", "Aldred"),
(50, "Dotti", "Bird"),
(51, "Chiquita", "Abraham"),
(52, "Minette", "Adelson"), 
(53, "Sharla", "Ambrosini"),
(54, "Bethina", "Barney"),
(55, "Zora", "Ahler"),
(56, "Megen", "Alexander"),
(57, "Micheline", "Aderhold"),
(58, "Liv", "Akagi"),
(59, "Lethia", "Adan"),
(60, "Sheila-Kathryn", "Amble"),
(61, "Averil", "Alderfer"),
(62, "Karrie", "Ake"),
(63, "Rozella", "Beitel"),
(64, "Klara", "Allaway"),
(65, "Margaret", "Allgaier"),
(66, "Teddie", "Alm"),
(67, "Candace", "Allyn"),
(68, "Shanda", "Alarcon"),
(69, "Fay", "Alexis"),
(70, "Malina", "Almaraz");

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
   ("Computer Engineering", "Cambridge", 2011),
   ("Economics", "Yale", 1980),
   ("Computer Science", "Yale", 1988),
   ("Civil Engineering", "Yale", 1996),
   ("Mathematics", "Yale", 2004),
   ("Journalism", "Yale", 2012),
   ("Aerospace Engineering", "Harvard", 1981),
   ("Software Engineering", "Harvard", 1989),
   ("Building Engineering", "Harvard", 1997),
   ("Electrical Engineering", "Harvard", 2005),
   ("Computer Engineering", "Harvard", 2013),
   ("Economics", "Undisputed University of Rhaganomics", 1982),
   ("Computer Science", "Undisputed University of Rhaganomics", 1998),
   ("Computer Science", "Undisputed University of Rhaganomics", 2006),
   ("Civil Engineering", "Undisputed University of Rhaganomics", 2014),
   ("Civil Engineering", "Massachussets Institute of Technology", 1983),
   ("Mathematics", "Massachussets Institute of Technology", 1991),
   ("Mathematics", "Massachussets Institute of Technology", 1999),
   ("Journalism", "Massachussets Institute of Technology", 2007),
   ("Journalism", "Massachussets Institute of Technology", 2015),
   ("Aerospace Engineering ", "University of Georgetown", 1984),
   ("Aerospace Engineering ", "University of Georgetown", 1992),
   ("Software Engineering", "University of Georgetown", 2000),
   ("Software Engineering", "University of Georgetown", 2008),
   ("Building Engineering", "University of Georgetown", 2016),
   ("Building Engineering", "Concordia University", 1985),
   ("Electrical Engineering", "Concordia University", 1993),
   ("Electrical Engineering", "Concordia University", 2001),
   ("Computer Engineering", "Concordia University", 2009),
   ("Computer Engineering", "Concordia University", 2017);

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
   (10, "Computer Engineering", "Cambridge", 2011),
   (11, "Economics", "Yale", 1980),
   (12, "Computer Science", "Yale", 1988),
   (13, "Civil Engineering", "Yale", 1996),
   (14, "Mathematics", "Yale", 2004),
   (15, "Journalism", "Yale", 2012),
   (16, "Aerospace Engineering", "Harvard", 1981),
   (17, "Software Engineering", "Harvard", 1989),
   (18, "Building Engineering", "Harvard", 1997),
   (19, "Electrical Engineering", "Harvard", 2005),
   (20, "Computer Engineering", "Harvard", 2013),
   (21, "Economics", "Undisputed University of Rhaganomics", 1982),
   (22, "Economics", "Undisputed University of Rhaganomics", 1982),
   (23, "Computer Science", "Undisputed University of Rhaganomics", 1998),
   (24, "Computer Science", "Undisputed University of Rhaganomics", 2006),
   (25, "Civil Engineering", "Undisputed University of Rhaganomics", 2014),
   (26, "Civil Engineering", "Massachussets Institute of Technology", 1983),
   (27, "Mathematics", "Massachussets Institute of Technology", 1991),
   (28, "Mathematics", "Massachussets Institute of Technology", 1999),
   (29, "Journalism", "Massachussets Institute of Technology", 2007),
   (30, "Journalism", "Massachussets Institute of Technology", 2015),
   (31, "Aerospace Engineering ", "University of Georgetown", 1984),
   (32, "Aerospace Engineering ", "University of Georgetown", 1992),
   (33, "Software Engineering", "University of Georgetown", 2000),
   (34, "Software Engineering", "University of Georgetown", 2008),
   (35, "Building Engineering", "University of Georgetown", 2016),
   (36, "Building Engineering", "Concordia University", 1985),
   (37, "Electrical Engineering", "Concordia University", 1993),
   (38, "Electrical Engineering", "Concordia University", 2001),
   (39, "Computer Engineering", "Concordia University", 2009),
   (40, "Computer Engineering", "Concordia University", 2017);

INSERT INTO Department VALUES
   -- departmentID, departmentName
   
( 1, "Computer Science" ),
( 2, "Software Engineering" ),
( 3, "Building Engineering"),
( 4, "Civil Engineering"),
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
   -- programID, programName, departmentID, programCredits, programType ENUM( "UnderGraduate", "Graduate", "Graduate-Thesis" )
( 1, "Computer Applications", 1, 90.0, "UnderGraduate"),
( 2, "Computer Games", 1, 90.0, "UnderGraduate" ),
( 3, "Computer Applications", 1, 44.0, "Graduate" ),
( 4, "Computer Games", 1, 44.0, "Graduate-Thesis" ),

( 5, "Information Systems", 2, 90.0, "UnderGraduate"),
( 6, "Web Services & Applications", 2, 90.0, "UnderGraduate" ),
( 7, "Information Systems", 2, 44.0, "Graduate" ),
( 8, "Web Services & Applications", 2, 44.0, "Graduate-Thesis" ),

( 9, "Building Energy & Environment", 3, 90.0, "UnderGraduate"),
( 10, "Building Structures & Construction", 3, 90.0, "UnderGraduate" ),
( 11, "Building Energy & Environment", 3, 44.0, "Graduate" ),
( 12, "Building Structures & Construction", 3, 44.0, "Graduate-Thesis" ),

( 13, "Civil Infrastructure", 4, 90.0, "UnderGraduate"),
( 14, "Construction Engineering", 4, 90.0, "UnderGraduate" ),
( 15, "Civil Infrastructure", 4, 44.0, "Graduate" ),
( 16, "Construction Engineering", 4, 44.0, "Graduate-Thesis" ),

( 17, "Pure Mathematics", 5, 90.0, "UnderGraduate"),
( 18, "Applied Mathematics", 5, 90.0, "UnderGraduate" ),
( 19, "Pure Mathematics", 5, 44.0, "Graduate" ),
( 20, "Applied Mathematics", 5, 44.0, "Graduate-Thesis" ),

( 21, "Print Media", 6, 90.0, "UnderGraduate"),
( 22, "Corporate Journalism", 6, 90.0, "UnderGraduate" ),
( 23, "Print Media", 6, 44.0, "Graduate" ),
( 24, "Corporate Journalism", 6, 44.0, "Graduate-Thesis" ),

( 25, "Avionics & Embedded Systems", 7, 90.0, "UnderGraduate"),
( 26, "Pervasive Computing", 7, 90.0, "UnderGraduate" ),
( 27, "Avionics & Embedded Systems", 7, 44.0, "Graduate" ),
( 28, "Pervasive Computing", 7, 44.0, "Graduate-Thesis" ),

( 29, "Microeconomics", 8, 90.0, "UnderGraduate"),
( 30, "Macroeconomics", 8, 90.0, "UnderGraduate" ),
( 31, "Microeconomics", 8, 44.0, "Graduate" ),
( 32, "Macroeconomics", 8, 44.0, "Graduate-Thesis" ),

( 33, "Power & Renewable Energy", 9, 90.0, "UnderGraduate"),
( 34, "Telecommunications", 9, 90.0, "UnderGraduate" ),
( 35, "Power & Renewable Energy", 9, 44.0, "Graduate" ),
( 36, "Telecommunications", 9, 44.0, "Graduate-Thesis" ),

( 37, "Aerodynamics & Propulsion", 10, 90.0, "UnderGraduate"),
( 38, "Aerospace Structures & Materials", 10, 90.0, "UnderGraduate" ),
( 39, "Aerodynamics & Propulsion", 10, 44.0, "Graduate" ),
( 40, "Aerospace Structures & Materials", 10, 44.0, "Graduate-Thesis" );


INSERT INTO Course VALUES
    -- courseID, courseName, departmentID, courseCredits, prerequisite

( "COMP248", "Introduction To Object Oriented Programming", 1, 3.0, NULL),
( "COMP249", "Advanced Object Oriented Programming", 1, 4.0, "COMP248"),
( "COMP1268", "Advanced Methods of Database Implementation", 1, 6.0, "COMP249" ),
( "COMP1368", "Really Difficult Turing Machines", 1, 6.0, "COMP1268" ),

( "SOEN287", "Websites N Stuff", 2, 3.0, NULL),
( "SOEN321", "Introduction To Hacking Protection", 2, 3.0, "SOEN287" ),
( "SOEN1020", "Advanced Planning for Duty Delegation", 2, 6.0, NULL ),
( "SOEN1220", "Databases", 2, 6.0, "SOEN1020" ),

( "BUEN223", "Introduction to Union Negotiations", 3, 3.0, NULL),
( "BUEN346", "Strategies for Material Selection", 3, 4.0, "BUEN233" ),
( "BUEN1238", "Advanced Mafia Avoidance", 3, 6.0, "BUEN233" ),
( "BUEN1485", "Introduction To Skyscraper Views ", 3, 7.0, "BUEN346" ),

( "CIVI101", "Introduction to Civility", 4, 3.0, NULL),
( "CIVI210", "Construction Methods and Strategies", 4, 4.0, "CIVI210" ),
( "CIVI1256", "Advanced Civil Infrastructure", 4, 6.0 , NULL),
( "CIVI1385", "A Lesson In Construction Engineering", 4, 6.0, "CIVI1256" ),

( "MATH203", "Calculus I", 5, 3.0, NULL),
( "MATH205", "Calculus II", 5, 3.0, "MATH203"),
( "MATH1465", "Introduction To Really Hard Algebra", 5, 6.0, "MATH205" ),
( "MATH1546", "Advanced Really Hard Algebra", 5, 6.0, "MATH205" ),

( "JOUR223", "Introduction to Dying Media Forms", 6, 3.0, NULL),
( "JOUR362", "Methods and Strategies of Spin", 6, 3.0, "JOUR223" ),
( "JOUR1356", "Introduction to Tomfoolery", 6, 4.0, "JOUR362"),
( "JOUR1452", "Advanced Question Dodging", 6, 6.0, "JOUR223" ),

( "COEN221", "Introduction to Tinkering", 7, 3.0, NULL),
( "COEN345", "Power Button Development", 7, 4.0, "COEN221" ),
( "COEN1152", "Advanced Tinkering", 7, 6.0, "COEN345" ),
( "COEN1235", "Advanced NAND Gate Development", 7, 7.0, "COEN1152" ),

( "ECON201", "Introduction to Microeconomics", 8, 3.0, NULL),
( "ECON203", "Introduction to Macroeconomics", 8, 3.0, NULL ),
( "ECON1030", "Advanced Market Crashing Techniques", 8, 6.0, "ECON203"),
( "ECON1136", "Crippling Student Debt", 8, 6.0, "ECON201" ),

( "ELEC247", "Introduction to Zapping", 9, 3.0, NULL),
( "ELEC353", "Telecommunications System Design", 9, 4.0, "ELEC247" ),
( "ELEC1032", "Advanced Electricity Billing", 9, 6.0, "ELEC353" ),
( "ELEC1228", "Advanced Red Wire Cutting", 9, 6.0, "ELEC1032" ),

( "AERO321", "Introduction to Flying", 10, 3.0, NULL),
( "AERO448", "Wrong Wright Brothers' Theories", 10, 3.5, "AERO448" ),
( "AERO1236", "Introduction Metal Can Flying", 10, 6.0, "AERO321"),
( "AERO1458", "Advanced Flying Saucers", 10, 6.0, "AERO1236" );


INSERT INTO CourseProgram VALUES
    -- programID, courseID	
    
    (1, "COMP248"),
    (1, "COMP249"),
    (4, "COMP1268"),
    (4, "COMP1368"),
    
    (6, "SOEN287"),
    (6, "SOEN321"),
    (7, "SOEN1020"),
    (7, "SOEN1220"),
    
    (9, "BUEN223"),
    (9, "BUEN346"),
    (12, "BUEN1238"),
    (12, "BUEN1485"),
    
    (13, "CIVI101"),
    (13, "CIVI210"),
    (16, "CIVI1256"),
    (16, "CIVI1385"),
    
    (18, "MATH203"),
    (18, "MATH205"),
    (19, "MATH1465"),
    (19, "MATH1546"),
    
    (21, "JOUR223"),
    (21, "JOUR362"),
    (23, "JOUR1356"),
    (23, "JOUR1452"),
    
    (24, "COEN221"),
    (24, "COEN345"),
    (26, "COEN1152"),
    (26, "COEN1235"),
    
    (27, "ECON201"),
    (27, "ECON203"),
    (29, "ECON1030"),
    (29, "ECON1136"),
    
    (32, "ELEC247"),
    (32, "ELEC353"),
    (35, "ELEC1032"),
    (35, "ELEC1228"),
    
    (38, "AERO321"),
    (38, "AERO448"),
    (40, "AERO1236"),
    (40, "AERO1458");

INSERT INTO Term VALUES
    -- termID, termName ENUM('FALL', 'WINTER', 'SUMMER'), termYear
    
(1, 'FALL', 2015),
    (2, 'WINTER', 2015),
    (3, 'SUMMER', 2015),
	(4, 'FALL', 2016),
    (5, 'WINTER', 2016),
    (6, 'SUMMER', 2016),
	(7, 'FALL', 2017),
    (8, 'WINTER', 2017),
    (9, 'SUMMER', 2017),
	(10, 'FALL', 2018),
    (11, 'WINTER', 2018),
    (12, 'SUMMER', 2018),
	(13, 'FALL', 2019),
    (14, 'WINTER', 2019),
    (15, 'SUMMER', 2019),
	(16, 'FALL', 2020),
    (17, 'WINTER', 2020),
    (18, 'SUMMER', 2020),
	(19, 'FALL', 2021),
    (20, 'WINTER', 2021),
    (21, 'SUMMER', 2021),
	(22, 'FALL', 2022),
    (23, 'WINTER', 2022),
    (24, 'SUMMER', 2022);
    

/*INSERT INTO Section VALUES
    
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
	
