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

-- !!!Triggers should make it so that this is not even necessary!!! Comment out when trigger works.
INSERT INTO Room VALUES
-- roomId, buildingID
  (406, "MB"),
  (301, "HH"),
  (207, "AD"),
  (1210, "PY"),
  (604, "FG"),
(1003, "MB"),
(1102, "HH"),
(506, "AD"),
(507, "PY"),
(610, "SH"),
(803, "FG"),
(912, "EV"),
(707, "LB"),
(506, "TA"),
(307, "VL"),
(302, "EV"),
(506, "LB"),
(705, "TA"),
(603, "VL"),
(809, "SH");



 INSERT INTO Classroom VALUES
 -- roomID, buildingID, capacity
  (406, "MB", 50),
  (301, "HH", 100),
  (207, "AD", 25),
  (1210, "PY", 69),
  (604, "FG", 120);
  
  
  
 INSERT INTO Lab VALUES
 -- labID, buildingID, capacity
(1003, "MB", 50),
(1102, "HH", 25),
(506, "AD", 35),
(507, "PY", 69),
(610, "SH", 50);
 
 INSERT INTO Office VALUES
 -- officeID, buildingID
(803, "FG"),
(912, "EV"),
(707, "LB"),
(506, "TA"),
(307, "VL");

 INSERT INTO ConferenceRoom VALUES
 -- conferenceRoomID, buildingID
(302, "EV"),
(506, "LB"),
(705, "TA"),
(603, "VL"),
(809, "SH");

INSERT INTO Facilities VALUES
-- roomID, buildingID, type
(406, "MB", "Projector"),
(301, "HH", "Projector"),
(207, "AD", "Computers"),
(1210, "PY", "other"),
(604, "FG", "Projector"),
(1003, "MB", "Computers"),
(1102, "HH", "Computers"),
(506, "AD", "Projector"),
(507, "PY", "other"),
(610, "SH", "Computers"),
(803, "FG", "other"),
(912, "EV", "Computers"),
(707, "LB", "Computers"),
(506, "TA", "Computers"),
(307, "VL", "Projector"),
(302, "EV", "Projector"),
(506, "LB", "Projector"),
(705, "TA", "Projector"),
(603, "VL", "Projector"),
(809, "SH", "Projector");




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
(21, "Antonietta", "Allee"), -- Economics Supervisor
(22, "Belinda", "Babb"), -- Economics Supervisor
(23, "Lauri", "Barie"), -- Computer Science Supervisor
(24, "Trix", "Alfonso"), -- Software Engineering Supervisor
(25, "Jaclyn", "Albanese"), -- Civil Engineering Supervisor
(26, "Jandy", "Akeley"), -- Building Engineering Supervisor
(27, "Dorri", "Adelson"), -- Mathematics Supervisor
(28, "Opaline", "Allington"), -- Mathematics Supervisor
(29, "Vicki", "Bargar"), -- Journalism Supervisor
(30, "Arabel", "Allred"), -- Journalism Supervisor
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
(41,"Kelcie", "Aderholt"), -- Computer Science Professor
(42, "Biddie", "Alexis"), -- Civil Engineering
(43, "Angelita", "Barney"), -- Mathematics
(44, "Dee Dee", "Abdi"), -- Journalism
(45, "Candra", "Ballweg"), -- Economics
(46, "Florenza", "Adami"), -- Advisor of Computer Applications Program
(47, "Fernande", "Allis"), -- Advisor of Computer Games Program
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
  ("Deutsche Bank Prize in Financial Economics", 1985),
  ("Deutsche Bank Prize in Financial Economics", 1990),
  ("Deutsche Bank Prize in Financial Economics", 1995),
  ("Deutsche Bank Prize in Financial Economics", 2000),
  ("Deutsche Bank Prize in Financial Economics", 2005),
  ("Deutsche Bank Prize in Financial Economics", 2010),
  ("Deutsche Bank Prize in Financial Economics", 2020),
  ("Turing Award", 1981),
  ("Turing Award", 1986),
  ("Turing Award", 1991),
  ("Turing Award", 1996),
  ("Turing Award", 2001),
  ("Turing Award", 2006),
  ("Turing Award", 2011),
  ("Turing Award", 2016),
  ("Engineering Gold Medal", 1982),
  ("Engineering Gold Medal", 1987),
  ("Engineering Gold Medal", 1992),
  ("Engineering Gold Medal", 1997),
  ("Engineering Gold Medal", 2002),
  ("Engineering Gold Medal", 2007),
  ("Engineering Gold Medal", 2012),
  ("Engineering Gold Medal", 2017),
  ("Nobel Pize in Mathematics", 1983),
  ("Nobel Pize in Mathematics", 1988),
  ("Nobel Pize in Mathematics", 1993),
  ("Nobel Pize in Mathematics", 1998),
  ("Nobel Pize in Mathematics", 2003),
  ("Nobel Pize in Mathematics", 2008),
  ("Nobel Pize in Mathematics", 2013),
  ("Nobel Pize in Mathematics", 2018),
  ("Pulitzer Award", 1984),
  ("Pulitzer Award", 1989),
  ("Pulitzer Award", 1994),
  ("Pulitzer Award", 1999),
  ("Pulitzer Award", 2004),
  ("Pulitzer Award", 2009),
  ("Pulitzer Award", 2014),
  ("Pulitzer Award", 2019);

INSERT INTO Publication VALUES
   -- publicationName, year 
  
  ("Journal of International Economics", 1979),
  ("Journal of International Economics", 1984),
  ("Journal of International Economics", 1989),
  ("Journal of International Economics", 1994),
  ("Journal of International Economics", 1999),
  ("Journal of International Economics", 2004),
  ("Journal of International Economics", 2009),
  ("Journal of International Economics", 2014),
  ("The Journal of Supercomputing", 1980),
  ("The Journal of Supercomputing", 1985),
  ("The Journal of Supercomputing", 1990),
  ("The Journal of Supercomputing", 1995),
  ("The Journal of Supercomputing", 2000),
  ("The Journal of Supercomputing", 2005),
  ("The Journal of Supercomputing", 2010),
  ("The Journal of Supercomputing", 2015),
  ("Canadian Journal of Civil Engineering", 1981),
  ("Canadian Journal of Civil Engineering", 1986),
  ("Canadian Journal of Civil Engineering", 1991),
  ("Canadian Journal of Civil Engineering", 1996),
  ("Canadian Journal of Civil Engineering", 2001),
  ("Canadian Journal of Civil Engineering", 2006),
  ("Canadian Journal of Civil Engineering", 2011),
  ("Canadian Journal of Civil Engineering", 2016),
  ("Advances in Mathematics", 1982),
  ("Advances in Mathematics", 1987),
  ("Advances in Mathematics", 1992),
  ("Advances in Mathematics", 1997),
  ("Advances in Mathematics", 2002),
  ("Advances in Mathematics", 2007),
  ("Advances in Mathematics", 2012),
  ("Advances in Mathematics", 2017),
  ("Time Magazine", 1983),
  ("Time Magazine", 1988),
  ("Time Magazine", 1993),
  ("Time Magazine", 1998),
  ("Time Magazine", 2003),
  ("Time Magazine", 2008),
  ("Time Magazine", 2013),
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
  
   (11, 8), -- Economics
   (12, 1),
   (13, 4), -- Civil Engineering
   (14, 5), -- Mathematics
   (15, 6), -- Journalism
   (16, 10), -- Aerospace Engineering
   (17, 2),
   (18, 3),
   (19, 9),
   (20, 7),
   (31, 10), -- Aerospace Engineering Professor
   (32, 10), -- Aerospace Engineering Professor
	(33, 2), -- Software Engineering Professor
	(34, 2), -- Software Engineering Professor
	(35, 3), -- Building Engineering Professor
	(36, 3), -- Building Engineering Professor
	(37, 9), -- Electrical Engineering Professor 
	(38, 9), -- Electrical Engineering Professor 
	(39, 7), -- Computer Engineering Professor
	(40, 7), -- Computer Engineering Professor
    (41, 1), -- Computer Science Professor
	(42, 4), -- Civil Engineering
	(43, 5), -- Mathematics
	(44, 6), -- Journalism
	(45, 8); -- Economics

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
   
  INSERT INTO Supervisor VALUES
		-- facultyID, departmentID
        
(21, 8), -- Economics 
(22, 8), -- Economics 
(23, 1), -- Computer Science 
(24, 2), -- Software Engineering
(25, 4), -- Civil Engineering
(26, 3), -- Building Engineering 
(27, 5), -- Mathematics
(28, 5), -- Mathematics 
(29, 6), -- Journalism
(30, 6); -- Journalism
        
        
INSERT INTO ResearchFunding VALUES
     -- fundingID, supervisorID, name, amount
     
(1, 21, "The Buy High Sell Low Equilibrium", 7000), -- Economics 
(2, 22, "", 80000), -- Economics 
(3, 23, "", 900000), -- Computer Science 
(4, 24, "", 1000000), -- Computer Science 
(5, 25, "", 50), -- Civil Engineering
(6, 26, "", 600), -- Civil Engineering 
(7, 27, "", 7000), -- Mathematics
(8, 28, "",80000), -- Mathematics 
(9, 29, "", 900000), -- Journalism
(10, 30, "", 1000000); -- Journalism, 
   
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
    
INSERT INTO TimeSlot VALUES
    -- timeID INT, day ENUM( "Monday" , "Tuesday", "Wednesday", "Thursday", "Friday" ), startTime TIME ,endTime
    
    (1, "Monday", "10:00:00", "11:00:00"),
    (2, "Monday", "11:00:00", "12:00:00"),
    (3,  "Monday", "12:00:00", "13:00:00"),
    (4, "Monday", "13:00:00", "14:00:00"),
    (5,  "Monday", "14:00:00", "15:00:00"),
    (6,  "Monday", "15:00:00", "16:00:00"),
    (7, "Monday", "16:00:00", "17:00:00"),
    (8, "Monday", "17:00:00", "18:00:00"),
    
    (9, "Tuesday", "10:00:00", "11:00:00"),
    (10, "Tuesday", "11:00:00", "12:00:00"),
    (11,  "Tuesday", "12:00:00", "13:00:00"),
    (12, "Tuesday", "13:00:00", "14:00:00"),
    (13,  "Tuesday", "14:00:00", "15:00:00"),
    (14,  "Tuesday", "15:00:00", "16:00:00"),
    (15, "Tuesday", "16:00:00", "17:00:00"),
    (16, "Tuesday", "17:00:00", "18:00:00"),
    
    (17, "Wednesday", "10:00:00", "11:00:00"),
    (18, "Wednesday", "11:00:00", "12:00:00"),
    (19,  "Wednesday", "12:00:00", "13:00:00"),
    (20, "Wednesday", "13:00:00", "14:00:00"),
    (21,  "Wednesday", "14:00:00", "15:00:00"),
    (22,  "Wednesday", "15:00:00", "16:00:00"),
    (23, "Wednesday", "16:00:00", "17:00:00"),
    (24, "Wednesday", "17:00:00", "18:00:00"),
    
    (25, "Thursday", "10:00:00", "11:00:00"),
    (26, "Thursday", "11:00:00", "12:00:00"),
    (27,  "Thursday", "12:00:00", "13:00:00"),
    (28, "Thursday", "13:00:00", "14:00:00"),
    (29,  "Thursday", "14:00:00", "15:00:00"),
    (30,  "Thursday", "15:00:00", "16:00:00"),
    (31, "Thursday", "16:00:00", "17:00:00"),
    (32, "Thursday", "17:00:00", "18:00:00"),
    
    (33, "Friday", "10:00:00", "11:00:00"),
    (34, "Friday", "11:00:00", "12:00:00"),
    (35,  "Friday", "12:00:00", "13:00:00"),
    (36, "Friday", "13:00:00", "14:00:00"),
    (37,  "Friday", "14:00:00", "15:00:00"),
    (38,  "Friday", "15:00:00", "16:00:00"),
    (39, "Friday", "16:00:00", "17:00:00"),
    (40, "Friday", "17:00:00", "18:00:00");

INSERT INTO Section VALUES
    
    -- courseID, sectionID, termID, instructorID, roomID, buildingID, timeID
    
( "COMP248", "BB", 12, 12, 406, "MB", 1),
( "COMP248", "LL", 22, 41, 301, "HH", 5),
( "COMP249", "VV", 8, 12, 207, "AD", 8),
( "COMP1268", "FF", 18, 41, 1210, "PY", 1 ),
( "COMP1368", "PP", 4, 12, 604, "FG", 5 ),

( "SOEN287", "CC", 13, 17, 406, "MB", 8),
( "SOEN287", "MM", 23, 33, 301, "HH", 1),
( "SOEN321", "WW", 9, 34, 207, "AD", 5),
( "SOEN1020", "GG", 19, 17, 1210, "PY", 8 ),
( "SOEN1220", "QQ", 5, 33, 604, "FG", 1 ),

( "BUEN223", "DD", 14, 18, 406, "MB", 5),
( "BUEN223", "NN", 24, 35, 301, "HH", 8),
( "BUEN346", "XX", 10, 36, 207, "AD", 1 ),
( "BUEN1238", "HH", 20, 18, 1210, "PY", 5 ),
( "BUEN1485", "RR", 6, 35, 604, "FG", 8 ),

( "CIVI101", "EE", 15, 13, 406, "MB", 1),
( "CIVI101", "OO", 1, 42, 301, "HH", 5),
( "CIVI210", "YY", 11, 13, 207, "AD", 8 ),
( "CIVI1256", "II", 21, 42, 1210, "PY", 1),
( "CIVI1385", "SS", 7, 13, 604, "FG", 5 ),

( "MATH203", "FF", 16, 14, 406, "MB", 8),
( "MATH203", "PP", 2, 43, 301, "HH", 1),
( "MATH205", "ZZ", 12, 14, 207, "AD", 5),
( "MATH1465", "JJ", 22, 43, 1210, "PY", 8 ),
( "MATH1546", "TT", 8, 14, 604, "FG", 1 ),

( "JOUR223", "GG", 17, 15, 406, "MB", 5),
( "JOUR223", "QQ", 3, 44, 301, "HH", 8),
( "JOUR362", "AA", 13, 15, 207, "AD", 1 ),
( "JOUR1356", "KK", 23, 44, 1210, "PY", 5),
( "JOUR1452", "UU", 9, 15, 604, "FG", 8 ),

( "COEN221", "HH", 18, 20, 406, "MB", 1),
( "COEN221", "RR", 4, 39, 301, "HH", 5),
( "COEN345", "BB", 14, 40, 207, "AD", 8 ),
( "COEN1152", "LL", 24, 20, 1210, "PY", 1 ),
( "COEN1235", "VV", 10, 39, 604, "FG", 5 ),

( "ECON201", "II", 19, 11, 406, "MB", 8),
( "ECON201", "SS", 5, 45, 301, "HH", 1),
( "ECON203", "CC", 15, 11, 207, "AD", 5 ),
( "ECON1030", "MM", 1, 45, 1210, "PY", 8),
( "ECON1136", "WW", 11, 11, 604, "FG", 1 ),

( "ELEC247", "JJ", 20, 19, 406, "MB", 5),
( "ELEC353", "TT", 6, 37, 301, "HH", 8),
( "ELEC1032", "DD", 16, 38, 207, "AD", 1 ),
( "ELEC1228", "NN", 2, 19, 1210, "PY", 5 ),

( "AERO321", "KK", 21, 16, 301, "HH", 8),
( "AERO448", "UU", 7, 31, 406, "MB", 1 ),
( "AERO1236", "EE", 17, 32, 1210, "PY", 5),
( "AERO1458", "OO", 3, 16, 207, "AD", 8);

   
   
/*INSERT INTO TutorialSection VALUES
   -- courseID, sectionID, tutorialID, termID, teachingAssistantID, roomID, buildingID, timeID
   
   ();

INSERT INTO LabSection VALUES
    -- courseID, sectionID, labID, termID, teachingAssistantID, roomID, buildingID, timeID
    
   (); */

INSERT INTO Student VALUES
    -- studentID, firstName, lastName, email, phone, dateOfBirth, gpa, SSN
    
(1, "Kayley","Alcock", "Kayley.Alcock@gmail.com", 5874302489, "2001-02-05", 0.00, 10),
(2, "Blithe","Babino", "Blithe.Babino@gmail.com", 9974681905, "2000-06-18", 0.00, 11),
(3, "Bel","Balusek", "Bel.Balusek@gmail.com", 6294159303, "1999-11-25", 0.00, 12),
(4, "Vivian","Agron", "Vivian.Agron@hotmail.com", 2065499004, "1998-04-09", 0.00, 13),
(5, "Nita","Ballerini", "Nita.Ballerini@gmail.com", 1089917900, "1997-09-12", 0.00, 14),
(6, "Agatha","Abeyta", "Agatha.Abeyta@hotmail.com", 9531897726, "1996-08-11", 0.00, 15),
(7, "Lian","Alquist", "Lian.Alquist@hotmail.com", 5926485890, "1995-12-03", 0.00, 16),
(8, "Mirabel","Able", "Mirabel.Able@hotmail.com", 4379029136, "1994-03-26", 4.00, 17), -- TA, Thesis Grad
(9, "Berna","Biscardi", "Berna.Biscardi@hotmail.com", 2234067539, "1993-10-16", 4.00, 18),
(10, "Glyn","Ban", "Glyn.Ban@gmail.com", 5536850841, "1992-01-01", 4.00, 19); -- TA, Thesis Grad

INSERT INTO UnderGraduateStudent VALUES
    -- studentID
   (1),
   (2),
   (3),
   (4),
   (5);

INSERT INTO GraduateStudent VALUES
    -- studentID, supervisorID
    
    (6, NULL),
    (7, NULL),
    (8, 24),
    (9, NULL),
    (10, 26); 
    
   INSERT INTO TeachingAssistant VALUES
    -- studentID , Must be a graduate student
    (8),
    (9),
    (10);
    

INSERT INTO StudentProgram VALUES
    -- studentID, programID
	(1, 1),
   (2, 2),
   (3, 5),
   (4, 6),
   (5, 9),
   (6, 3),
	(7, 4),
    (8, 8),  -- This person is a Thesis - Graduate Student and TA
    (9, 11),	 -- This person is a Graduate Student and TA
    (10, 12); -- This person is a Thesis - Graduate Student and TA
    
INSERT INTO Grade VALUES
    -- grade, gradePoint
    
    ("A+", 4.30), 
    ("A", 4.00),
    ("A-", 3.70),
    ("B+", 3.30),
    ("B", 3.00),
    ("B-", 2.70),
    ("C+", 2.30),
    ("C", 2.00),
    ("C-", 1.70),
    ("D+", 1.30),
    ("D", 1.00),
    ("D-", 0.70),
    ("F", 0.00);
    


/*INSERT INTO StudentCourses VALUES
    -- studentID, courseID, sectionID, termID, grade
    
    (1, "COMP248", 'BB', 1, "A"); */
    
    
INSERT INTO GraduateAwards VALUES
   -- studentID, awardName, awardyear
    
    (6,"Turing Award", 2011),
    (7,"Turing Award", 2016),
    (8, "Engineering Gold Medal", 2012),
    (9, "Engineering Gold Medal", 2017),
    (10, "Engineering Gold Medal", 2007); 


INSERT INTO GraduatePublication VALUES
    -- studentID, publicationName, publicationYear
    
    (6, "The Journal of Supercomputing", 2010),
    (7, "The Journal of Supercomputing", 2015),
    (8, "Canadian Journal of Civil Engineering", 2011),
    (9, "Canadian Journal of Civil Engineering", 2016),
    (10, "Canadian Journal of Civil Engineering", 2006); 
    
	
