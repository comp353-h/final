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
