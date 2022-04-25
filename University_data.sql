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
INSERT INTO faculty VALUES ('36058', '950000', 'Jeffrey', 'Lawton','jlawton@eastern.edu','610-437-1446');




-------------------------------------------------------------------------------
--------------------------------students------------------------------------------------
INSERT INTO students VALUES ('000128','Micheal','Zhang', 'micheal.zhang@eastern.edu', '202-918-2132');
INSERT INTO students VALUES ('012345','Aroon', 'Shankar', 'aroon.shankar@eastern.edu', '582-529-5188');
INSERT INTO students VALUES ('019991', 'Jules','Brandt', 'jules.brandt@eastern.edu', '419-326-0712');
INSERT INTO students VALUES ('023121', 'Juan','Chavez', 'juan.chavez@eastern.edu', ' 231-881-4310');
INSERT INTO students VALUES ('044552', 'Jah','Peltier', 'jah.peltier@eastern.edu', '215-547-9097');
INSERT INTO students VALUES ('045678', 'Chance','Levy', 'chance.levy@eastern.edu', ' 505-644-0457');
INSERT INTO students VALUES ('054321', 'Walter','Williams', 'Comp. Sci.', '505-644-0227');
INSERT INTO students VALUES ('055739', 'Jose','Sanchez', 'jose.sanchez@eastern.edu', ' 208-541-4879');
INSERT INTO students VALUES ('070557', 'Jon','Snow', 'jon.snow@eastern.edu', ' 582-222-1973');
INSERT INTO students VALUES ('076543','Micheal' ,'Brown', 'micheal.brown@eastern.edu', '202-897-4143');
INSERT INTO students VALUES ('076653', 'Trevor','Aoi', 'trevor.aoi@eastern.edu', '512-415-4114');
INSERT INTO students VALUES ('098765', 'Nick','Bourikas', 'nick.bourikas@eastern.edu', '505-712-7572');
INSERT INTO students VALUES ('098988', 'Mike','Tanaka', 'mike.tanaka@eastern.edu', '582-583-3559');
--------------------------------------------------------------------------
---------------------------------employees------------------------------------------
INSERT INTO employees VALUES ('00128','Micheal','Zhang', 'micheal.zhang@eastern.edu', '202-918-2132','8.50');
INSERT INTO employees VALUES ('12345','Chance','Levy', 'chance.levy@eastern.edu', ' 505-644-0457','8.50');
INSERT INTO employees VALUES ('23121','Jon','Snow', 'jon.snow@eastern.edu', ' 582-222-1973','7.75');
INSERT INTO employees VALUES ('44553', );
INSERT INTO employees VALUES ('45678');
INSERT INTO employees VALUES ('76543');
INSERT INTO employees VALUES ('76653');
INSERT INTO employees VALUES ('98765');
INSERT INTO employees VALUES ('98988');


---------------------------------------------------------------------------------------
--------------------------------------driving_details---------------------------------------
INSERT INTO driving_details('45565','00128','47148236','2022-04-22 13:23:44','2022-04-22 15:45:21','0.50');
INSERT INTO driving_details('45565','00128','47148236','2022-04-22 16:00:00','2022-04-22 16:45:30','0.35');
INSERT INTO driving_details('10101','12345','37859172','2022-04-23 08:30:00','2022-04-23 10:00:00','1.00');
INSERT INTO driving_details('45565','00128','47148236','2022-04-23 13:30:44','2022-04-23 15:45:21','0.90');
INSERT INTO driving_details('45565','00128','47148236','2022-04-23 16:00:00','2022-04-23 16:45:30','0.75');
INSERT INTO driving_details('76543','23121','35028697','2022-04-24 13:23:44','2022-04-24 15:45:21','0.50');
INSERT INTO driving_details('76543','23121','35028697','2022-04-24 16:00:00','2022-04-24 16:45:30','0.35');
INSERT INTO driving_details('45565','00128','47148236','2022-04-25 08:30:00','2022-04-25 10:00:00','1.00');
INSERT INTO driving_details('10101','12345','37859172','2022-04-25 13:30:44','2022-04-25 15:45:21','0.90');
INSERT INTO driving_details('45565','00128','47148236','2022-04-25 16:00:00','2022-04-25 16:45:30','0.75');
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------incoming_shipments------------------------------------------------

INSERT INTO incoming_shipments('272118442670','000128',NULL,'12345','2022-04-22 13:23:44','SHELF');
INSERT INTO incoming_shipments('272118442870','000128',NULL,'12345','2022-04-22 13:23:44','SHELF');
INSERT INTO incoming_shipments('272118442970','000128',NULL,'12345','2022-04-22 13:23:44','SHELF');
INSERT INTO incoming_shipments('272177160739',NULL,'10101','12345','2022-04-22 13:25:00','SHELF');
INSERT INTO incoming_shipments('272056557375',NULL,'10101','12345','2022-04-22 13:25:00','SHELF');

INSERT INTO incoming_shipments('572658749645','019991',NULL,'23121','2022-04-23 12:23:44','SHELF');
INSERT INTO incoming_shipments('546530021754','023121',NULL,'76543','2022-04-23 12:30:44','SHELF');
INSERT INTO incoming_shipments('295511407701','000128',NULL,'12345','2022-04-23 13:23:44','SHELF');
INSERT INTO incoming_shipments('938649320680',NULL,'85001','98765','2022-04-23 13:25:00','SHELF');
INSERT INTO incoming_shipments('420190873696',NULL,'10101','45678','2022-04-23 13:30:00','SHELF');





-----------------------------------------------------------------------------------------------------------------------
---------------------------------------------------outgoing_shipments---------------------------------------------------











------------------------------------------customers------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------
