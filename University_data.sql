DELETE FROM incoming_shipments;
DELETE FROM driving_details;
DELETE FROM employees;
DELETE FROM students;
DELETE FROM faculty;
DELETE FROM customers;
DELETE FROM departments;
DELETE FROM outgoing_shipments;

-------------------------------------------------------------------------------
---------------------------------departments------------------------------------
--------------------------------------------------------------------------------

INSERT INTO departments VALUES ('Biology', 'Andrews', '900000');
INSERT INTO departments VALUES ('Comp. Sci.', 'Mccinnis', '100000');
INSERT INTO departments VALUES ('Elec. Eng.', 'Andrews', '850000');
INSERT INTO departments VALUES ('Finance', 'ELC', '120000');
INSERT INTO departments VALUES ('Marketing', 'ELC', '125000');
INSERT INTO departments VALUES ('History', 'Mccinnis', '500000');
INSERT INTO departments VALUES ('Music', 'Workman', '800000');
INSERT INTO departments VALUES ('Physics', 'Mccinnis', '700000');
INSERT INTO departments VALUES ('Chemistry', 'Andrews', '950000');

------------------------------------------------------------------------
---------------------------------faculty--------------------------------
---------------------------------------------------------------------------


--------------------------------------Comp. Sci.--------------------------------
INSERT INTO faculty VALUES ('10101', '100000', 'Walter', 'Huddell','whuddell@eastern.edu','610-225-5530');
INSERT INTO faculty VALUES ('10102', '100000', 'Gregory', 'Longo','glongo@eastern.edu','610-225-5531');
INSERT INTO faculty VALUES ('10103', '100000', 'Nicola', 'McLallen','nmcLallen','610-225-5532');
INSERT INTO faculty VALUES ('10104', '100000', 'Micheal', 'Morabito','mmorabito','610-225-5533');
INSERT INTO faculty VALUES ('10105', '100000', 'Brandi', 'Henry','bhenry','610-225-5534');
---------------------------------------------Biology-----------------------------------------------
INSERT INTO faculty VALUES ('65000', '900000', 'Maria', 'Fichera','mfichera@eastern.edu','610-341-1460');
INSERT INTO faculty VALUES ('65001', '900000', 'Wayne', 'Lutz','wlutz@eastern.edu','610-341-1461');
INSERT INTO faculty VALUES ('65002', '900000', 'David', 'Unander','dunander@eastern.edu','610-341-1462');
-------------------------------------------------Elec. Eng----------------------------------------------
INSERT INTO faculty VALUES ('85000', '850000', 'Christopher', 'Bittenbender','cbittenbender@eastern.edu','610-342-1460');
INSERT INTO faculty VALUES ('85001', '850000', 'William', 'Storm','wstorm@eastern.edu','610-342-1461');
INSERT INTO faculty VALUES ('85002', '850000', 'Lucas', 'Stromberg','lstromberg@eastern.edu','610-342-1462');
INSERT INTO faculty VALUES ('85003', '850000', 'Katrina', 'Hayes','khayes@eastern.edu','610-342-1463');
--------------------------------------Finance----------------------------------------------------------------
INSERT INTO faculty VALUES ('76000', '120000', 'Lorie', 'Thomas','lthomas@eastern.edu','610-342-1470');
INSERT INTO faculty VALUES ('76001', '120000', 'Mary', 'Jones','mjones@eastern.edu','610-342-1471');
---------------------------------------Marketing--------------------------------------------------------
INSERT INTO faculty VALUES ('56000', '125000', 'Kelly', 'Goddard','kgoddard@eastern.edu','610-347-1465');
INSERT INTO faculty VALUES ('56001', '125000', 'Micheal', 'Thomas','mthomas@eastern.edu','610-347-1466');
INSERT INTO faculty VALUES ('56002', '125000', 'Ally', 'Rosario','arosario@eastern.edu','610-347-1467');
------------------------------------------------History--------------------------------------
INSERT INTO faculty VALUES ('46000', '500000', 'Micheal', 'Lee','mlee@eastern.edu','610-357-1468');
INSERT INTO faculty VALUES ('46001', '500000', 'Johnathan', 'Reimer','jreimer@eastern.edu','610-357-1469');
INSERT INTO faculty VALUES ('46002', '500000', 'Micheal', 'Dondzilla','mdondzilla@eastern.edu','610-357-1470');
-----------------------------------------------Music-------------------------------------------------
INSERT INTO faculty VALUES ('36000', '800000', 'Steven', 'Ford','sford@eastern.edu','610-457-1468');
INSERT INTO faculty VALUES ('36001', '800000', 'Emily', 'Patsin','epatsin@eastern.edu','610-457-1469');
-----------------------------------------Physics------------------------------------------------------------
INSERT INTO faculty VALUES ('36650', '700000', 'Joseph', 'Giammarco','jgiammarco@eastern.edu','610-457-1440');
-------------------------------------------Chemistry--------------------------------------------------------------
INSERT INTO faculty VALUES ('36004', '950000', 'Jeanne', 'Bundens','jbundens@eastern.edu','610-437-1441');
INSERT INTO faculty VALUES ('36005', '950000', 'Joseph', 'Karpinski','jkarpinski@eastern.edu','610-437-1442');
NSERT INTO faculty VALUES ('36058', '950000', 'Jeffrey', 'Lawton','jlawton@eastern.edu','610-437-1446');




-------------------------------------------------------------------------------
--------------------------------students------------------------------------------------
INSERT INTO students VALUES ('00128', 'Zhang', 'Comp. Sci.', '102');
INSERT INTO students VALUES ('12345', 'Shankar', 'Comp. Sci.', '32');
INSERT INTO students VALUES ('19991', 'Brandt', 'History', '80');
INSERT INTO students VALUES ('23121', 'Chavez', 'Finance', '110');
INSERT INTO students VALUES ('44553', 'Peltier', 'Physics', '56');
INSERT INTO students VALUES ('45678', 'Levy', 'Physics', '46');
INSERT INTO students VALUES ('54321', 'Williams', 'Comp. Sci.', '54');
INSERT INTO students VALUES ('55739', 'Sanchez', 'Music', '38');
INSERT INTO students VALUES ('70557', 'Snow', 'Physics', '0');
INSERT INTO students VALUES ('76543', 'Brown', 'Comp. Sci.', '58');
INSERT INTO students VALUES ('76653', 'Aoi', 'Elec. Eng.', '60');
INSERT INTO students VALUES ('98765', 'Bourikas', 'Elec. Eng.', '98');
INSERT INTO students VALUES ('98988', 'Tanaka', 'Biology', '120');
--------------------------------------------------------------------------
---------------------------------employees------------------------------------------
INSERT INTO employees VALUES ('00128', '45565');
INSERT INTO employees VALUES ('12345', '10101');
INSERT INTO employees VALUES ('23121', '76543');
INSERT INTO employees VALUES ('44553', '22222');
INSERT INTO employees VALUES ('45678', '22222');
INSERT INTO employees VALUES ('76543', '45565');
INSERT INTO employees VALUES ('76653', '98345');
INSERT INTO employees VALUES ('98765', '98345');
INSERT INTO employees VALUES ('98988', '76766');
