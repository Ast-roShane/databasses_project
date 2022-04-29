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

INSERT INTO departments (department_id, faculty_count, building) VALUES ('900000', '12', 'Andrews' );
INSERT INTO departments (department_id, faculty_count, building) VALUES ('100000', '11', 'Mccinnis');
INSERT INTO departments (department_id, faculty_count, building) VALUES ('850000', '10', 'Andrews');
INSERT INTO departments (department_id, faculty_count, building) VALUES ('120000', '5', 'ELC');
INSERT INTO departments (department_id, faculty_count, building) VALUES ('125000', '7', 'ELC');
INSERT INTO departments (department_id, faculty_count, building) VALUES ('500000', '10', 'Mccinnis');
INSERT INTO departments (department_id, faculty_count, building) VALUES ('800000', '6', 'Workman');
INSERT INTO departments (department_id, faculty_count, building) VALUES ('700000', '8', 'Mccinnis');
INSERT INTO departments (department_id, faculty_count, building) VALUES ('950000', '12', 'Andrews');

------------------------------------------------------------------------
---------------------------------faculty--------------------------------
---------------------------------------------------------------------------


--------------------------------------Comp. Sci.--------------------------------
INSERT INTO faculty (faculty_id, department_id, first_name, last_name, email, contact_number) VALUES ('10101', '100000', 'Walter', 'Huddell','whuddell@eastern.edu','610-225-5530');
INSERT INTO faculty (faculty_id, department_id, first_name, last_name, email, contact_number) VALUES ('10102', '100000', 'Gregory', 'Longo','glongo@eastern.edu','610-225-5531');
INSERT INTO faculty (faculty_id, department_id, first_name, last_name, email, contact_number) VALUES ('10103', '100000', 'Nicola', 'McLallen','nmcLallen@eastern.edu','610-225-5532');
INSERT INTO faculty (faculty_id, department_id, first_name, last_name, email, contact_number) VALUES ('10104', '100000', 'Micheal', 'Morabito','mmorabito@eastern.edu','610-225-5533');
INSERT INTO faculty (faculty_id, department_id, first_name, last_name, email, contact_number) VALUES ('10105', '100000', 'Brandi', 'Henry','bhenry@eastern.edu','610-225-5534');
---------------------------------------------Biology-----------------------------------------------
INSERT INTO faculty (faculty_id, department_id, first_name, last_name, email, contact_number) VALUES ('65000', '900000', 'Maria', 'Fichera','mfichera@eastern.edu','610-341-1460');
INSERT INTO faculty (faculty_id, department_id, first_name, last_name, email, contact_number) VALUES ('65001', '900000', 'Wayne', 'Lutz','wlutz@eastern.edu','610-341-1461');
INSERT INTO faculty (faculty_id, department_id, first_name, last_name, email, contact_number) VALUES ('65002', '900000', 'David', 'Unander','dunander@eastern.edu','610-341-1462');
-------------------------------------------------Elec. Eng----------------------------------------------
INSERT INTO faculty (faculty_id, department_id, first_name, last_name, email, contact_number) VALUES ('85000', '850000', 'Christopher', 'Bittenbender','cbittenbender@eastern.edu','610-342-1460');
INSERT INTO faculty (faculty_id, department_id, first_name, last_name, email, contact_number) VALUES ('85001', '850000', 'William', 'Storm','wstorm@eastern.edu','610-342-1461');
INSERT INTO faculty (faculty_id, department_id, first_name, last_name, email, contact_number) VALUES ('85002', '850000', 'Lucas', 'Stromberg','lstromberg@eastern.edu','610-342-1462');
INSERT INTO faculty (faculty_id, department_id, first_name, last_name, email, contact_number) VALUES ('85003', '850000', 'Katrina', 'Hayes','khayes@eastern.edu','610-342-1463');
--------------------------------------Finance----------------------------------------------------------------
INSERT INTO faculty (faculty_id, department_id, first_name, last_name, email, contact_number) VALUES ('76000', '120000', 'Lorie', 'Thomas','lthomas@eastern.edu','610-342-1470');
INSERT INTO faculty (faculty_id, department_id, first_name, last_name, email, contact_number) VALUES ('76001', '120000', 'Mary', 'Jones','mjones@eastern.edu','610-342-1471');
---------------------------------------Marketing--------------------------------------------------------
INSERT INTO faculty (faculty_id, department_id, first_name, last_name, email, contact_number) VALUES ('56000', '125000', 'Kelly', 'Goddard','kgoddard@eastern.edu','610-347-1465');
INSERT INTO faculty (faculty_id, department_id, first_name, last_name, email, contact_number) VALUES ('56001', '125000', 'Micheal', 'Thomas','mthomas@eastern.edu','610-347-1466');
INSERT INTO faculty (faculty_id, department_id, first_name, last_name, email, contact_number) VALUES ('56002', '125000', 'Ally', 'Rosario','arosario@eastern.edu','610-347-1467');
------------------------------------------------History--------------------------------------
INSERT INTO faculty (faculty_id, department_id, first_name, last_name, email, contact_number) VALUES ('46000', '500000', 'Micheal', 'Lee','mlee@eastern.edu','610-357-1468');
INSERT INTO faculty (faculty_id, department_id, first_name, last_name, email, contact_number) VALUES ('46001', '500000', 'Johnathan', 'Reimer','jreimer@eastern.edu','610-357-1469');
INSERT INTO faculty (faculty_id, department_id, first_name, last_name, email, contact_number) VALUES ('46002', '500000', 'Micheal', 'Dondzilla','mdondzilla@eastern.edu','610-357-1470');
-----------------------------------------------Music-------------------------------------------------
INSERT INTO faculty (faculty_id, department_id, first_name, last_name, email, contact_number) VALUES ('36000', '800000', 'Steven', 'Ford','sford@eastern.edu','610-457-1468');
INSERT INTO faculty (faculty_id, department_id, first_name, last_name, email, contact_number) VALUES ('36001', '800000', 'Emily', 'Patsin','epatsin@eastern.edu','610-457-1469');
-----------------------------------------Physics------------------------------------------------------------
INSERT INTO faculty (faculty_id, department_id, first_name, last_name, email, contact_number) VALUES ('36650', '700000', 'Joseph', 'Giammarco','jgiammarco@eastern.edu','610-457-1440');
-------------------------------------------Chemistry--------------------------------------------------------------
INSERT INTO faculty (faculty_id, department_id, first_name, last_name, email, contact_number) VALUES ('36004', '950000', 'Jeanne', 'Bundens','jbundens@eastern.edu','610-437-1441');
INSERT INTO faculty (faculty_id, department_id, first_name, last_name, email, contact_number) VALUES ('36005', '950000', 'Joseph', 'Karpinski','jkarpinski@eastern.edu','610-437-1442');
INSERT INTO faculty (faculty_id, department_id, first_name, last_name, email, contact_number) VALUES ('36058', '950000', 'Jeffrey', 'Lawton','jlawton@eastern.edu','610-437-1446');




-------------------------------------------------------------------------------
--------------------------------students------------------------------------------------
INSERT INTO students (student_id, first_name, last_name, email, contact_number) VALUES ('000128','Micheal','Zhang', 'micheal.zhang@eastern.edu', '202-918-2132');
INSERT INTO students (student_id, first_name, last_name, email, contact_number) VALUES ('012345','Aroon', 'Shankar', 'aroon.shankar@eastern.edu', '582-529-5188');
INSERT INTO students (student_id, first_name, last_name, email, contact_number) VALUES ('019991', 'Jules','Brandt', 'jules.brandt@eastern.edu', '419-326-0712');
INSERT INTO students (student_id, first_name, last_name, email, contact_number) VALUES ('023121', 'Juan','Chavez', 'juan.chavez@eastern.edu', ' 231-881-4310');
INSERT INTO students (student_id, first_name, last_name, email, contact_number) VALUES ('044552', 'Jah','Peltier', 'jah.peltier@eastern.edu', '215-547-9097');
INSERT INTO students (student_id, first_name, last_name, email, contact_number) VALUES ('045678', 'Chance','Levy', 'chance.levy@eastern.edu', ' 505-644-0457');
INSERT INTO students (student_id, first_name, last_name, email, contact_number) VALUES ('054321', 'Walter','Williams', 'walter.williams@eastern.edu', '505-644-0227');
INSERT INTO students (student_id, first_name, last_name, email, contact_number) VALUES ('055739', 'Jose','Sanchez', 'jose.sanchez@eastern.edu', ' 208-541-4879');
INSERT INTO students (student_id, first_name, last_name, email, contact_number) VALUES ('070557', 'Jon','Snow', 'jon.snow@eastern.edu', ' 582-222-1973');
INSERT INTO students (student_id, first_name, last_name, email, contact_number) VALUES ('076543','Micheal' ,'Brown', 'micheal.brown@eastern.edu', '202-897-4143');
INSERT INTO students (student_id, first_name, last_name, email, contact_number) VALUES ('076653', 'Trevor','Aoi', 'trevor.aoi@eastern.edu', '512-415-4114');
INSERT INTO students (student_id, first_name, last_name, email, contact_number) VALUES ('098765', 'Nick','Bourikas', 'nick.bourikas@eastern.edu', '505-712-7572');
INSERT INTO students (student_id, first_name, last_name, email, contact_number) VALUES ('098988', 'Mike','Tanaka', 'mike.tanaka@eastern.edu', '582-583-3559');
--------------------------------------------------------------------------
---------------------------------employees------------------------------------------
INSERT INTO employees (employee_id, first_name, last_name, email, contact_number, hourly_rate) VALUES ('00128','Micheal','Zhang', 'micheal.zhang@eastern.edu', '202-918-2132','8.50');
INSERT INTO employees (employee_id, first_name, last_name, email, contact_number, hourly_rate) VALUES ('12345','Chance','Levy', 'chance.levy@eastern.edu', ' 505-644-0457','8.50');
INSERT INTO employees (employee_id, first_name, last_name, email, contact_number, hourly_rate) VALUES ('23121','Jon','Snow', 'jon.snow@eastern.edu', ' 582-222-1973','7.75');
INSERT INTO employees (employee_id, first_name, last_name, email, contact_number, hourly_rate) VALUES ('098988', 'Mike','Tanaka', 'mike.tanaka@eastern.edu', '582-583-3559');
INSERT INTO employees (employee_id, first_name, last_name, email, contact_number, hourly_rate) VALUES ('054321', 'Walter','Williams', 'walter.williams@eastern.edu', '505-644-0227');
INSERT INTO employees (employee_id, first_name, last_name, email, contact_number, hourly_rate) VALUES ('023121', 'Juan','Chavez', 'juan.chavez@eastern.edu', ' 231-881-4310');
INSERT INTO employees (employee_id, first_name, last_name, email, contact_number, hourly_rate) VALUES ('076653', 'Trevor','Aoi', 'trevor.aoi@eastern.edu', '512-415-4114');
INSERT INTO employees (employee_id, first_name, last_name, email, contact_number, hourly_rate) VALUES ('019991', 'Jules','Brandt', 'jules.brandt@eastern.edu', '419-326-0712');
INSERT INTO employees (employee_id, first_name, last_name, email, contact_number, hourly_rate) VALUES ('076543','Micheal' ,'Brown', 'micheal.brown@eastern.edu', '202-897-4143');


---------------------------------------------------------------------------------------
--------------------------------------driving_details---------------------------------------
INSERT INTO driving_details (van_id, employees_id, driver_license_number, time_left, datee, time_arrived, gas_amount) VALUES ('45565','00128','47148236','2022-04-22 13:23:44','2022-04-22', '15:45:21','0.50');
INSERT INTO driving_details (van_id, employees_id, driver_license_number, time_left, datee, time_arrived, gas_amount) VALUES ('45565','00128','47148236','2022-04-22 16:00:00','2022-04-22', '16:45:30','0.35');
INSERT INTO driving_details (van_id, employees_id, driver_license_number, time_left, datee, time_arrived, gas_amount) VALUES ('10101','12345','37859172','2022-04-23 08:30:00','2022-04-23', '10:00:00','1.00');
INSERT INTO driving_details (van_id, employees_id, driver_license_number, time_left, datee, time_arrived, gas_amount) VALUES ('45565','00128','47148236','2022-04-23 13:30:44','2022-04-23', '15:45:21','0.90');
INSERT INTO driving_details (van_id, employees_id, driver_license_number, time_left, datee, time_arrived, gas_amount) VALUES ('45565','00128','47148236','2022-04-23 16:00:00','2022-04-23', '16:45:30','0.75');
INSERT INTO driving_details (van_id, employees_id, driver_license_number, time_left, datee, time_arrived, gas_amount) VALUES ('76543','23121','35028697','2022-04-24 13:23:44','2022-04-24', '15:45:21','0.50');
INSERT INTO driving_details (van_id, employees_id, driver_license_number, time_left, datee, time_arrived, gas_amount) VALUES ('76543','23121','35028697','2022-04-24 16:00:00','2022-04-24', '16:45:30','0.35');
INSERT INTO driving_details (van_id, employees_id, driver_license_number, time_left, datee, time_arrived, gas_amount) VALUES ('45565','00128','47148236','2022-04-25 08:30:00','2022-04-25', '10:00:00','1.00');
INSERT INTO driving_details (van_id, employees_id, driver_license_number, time_left, datee, time_arrived, gas_amount) VALUES ('10101','12345','37859172','2022-04-25 13:30:44','2022-04-25', '15:45:21','0.90');
INSERT INTO driving_details (van_id, employees_id, driver_license_number, time_left, datee, time_arrived, gas_amount) VALUES ('45565','00128','47148236','2022-04-25 16:00:00','2022-04-25', '16:45:30','0.75');
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------incoming_shipments------------------------------------------------

INSERT INTO incoming_shipments (tracking_number, student_id, faculty_id, employees_ id, date_arrived, time_arrived, comments) VALUES ('272118442670','000128',NULL,'12345','2022-04-22', '13:23:44','SHELF');
INSERT INTO incoming_shipments (tracking_number, student_id, faculty_id, employees_ id, date_arrived, time_arrived, comments) VALUES ('272118442870','000128',NULL,'12345','2022-04-22', '13:23:44','SHELF');
INSERT INTO incoming_shipments (tracking_number, student_id, faculty_id, employees_ id, date_arrived, time_arrived, comments) VALUES ('272118442970','000128',NULL,'12345','2022-04-22', '13:23:44','SHELF');
INSERT INTO incoming_shipments (tracking_number, student_id, faculty_id, employees_ id, date_arrived, time_arrived, comments) VALUES ('272177160739',NULL,'10101','12345','2022-04-22', '13:25:00','SHELF');
INSERT INTO incoming_shipments (tracking_number, student_id, faculty_id, employees_ id, date_arrived, time_arrived, comments) VALUES ('272056557375',NULL,'10101','12345','2022-04-22', '13:25:00','SHELF');

INSERT INTO incoming_shipments (tracking_number, student_id, faculty_id, employees_ id, date_arrived, time_arrived, comments) VALUES ('572658749645', '019991', NULL, '23121', '2022-04-23', '12:23:44', 'SHELF');
INSERT INTO incoming_shipments (tracking_number, student_id, faculty_id, employees_ id, date_arrived, time_arrived, comments) VALUES ('546530021754', '023121', NULL, '76543', '2022-04-23', '12:30:44', 'SHELF');
INSERT INTO incoming_shipments (tracking_number, student_id, faculty_id, employees_ id, date_arrived, time_arrived, comments) VALUES ('295511407701', '000128', NULL, '12345', '2022-04-23', '13:23:44', 'SHELF');
INSERT INTO incoming_shipments (tracking_number, student_id, faculty_id, employees_ id, date_arrived, time_arrived, comments) VALUES ('938649320680', NULL, '85001', '98765', '2022-04-23', '13:25:00', 'SHELF');
INSERT INTO incoming_shipments (tracking_number, student_id, faculty_id, employees_ id, date_arrived, time_arrived, comments) VALUES ('420190873696', NULL, '10101', '45678', '2022-04-23', '13:30:00', 'SHELF');





-----------------------------------------------------------------------------------------------------------------------
---------------------------------------------------outgoing_shipments---------------------------------------------------

--FACULY SENDING OUT SHIPMENTS--
INSERT INTO outgoing_shipments (tracking_numbers, cust_id, employee_id, ship_date, ship_time, delivery_date, delivery_time, paid_date, orgin_address, destination_address, mail_type, notes) VALUES ('093107151142', '19482', '076653', '2022-03-12', '12:25:00', '2022-03-14', '15:45:00', '2022-03-11', '1300 Eagle Rd, Wayne PA 19087', 'destinattio addrss', 'FedEx', 'SHELF');
INSERT INTO outgoing_shipments (tracking_numbers, cust_id, employee_id, ship_date, ship_time, delivery_date, delivery_time, paid_date, orgin_address, destination_address, mail_type, notes) VALUES ('591080611321', '23532', '23121', '2022-01-21', '12:30:00', '2022-01-27', '15:45:00', '12:30:00', '1300 Eagle Rd, Wayne PA 19087', '3997 Pearl St Bridgman, Michigan(MI), 49106', 'UPS', 'SHELF')
INSERT INTO outgoing_shipments (tracking_numbers, cust_id, employee_id, ship_date, ship_time, delivery_date, delivery_time, paid_date, orgin_address, destination_address, mail_type, notes) VALUES ('290047273091', '63467', '23121', '2022-02-01', '11:25:00', '2022-02-08', '15:30:00', '11:25:00', '1300 Eagle Rd, Wayne PA 19087', '193 Trammell St Dubach, Louisiana(LA), 71235','UPS', 'Envelope')
INSERT INTO outgoing_shipments (tracking_numbers, cust_id, employee_id, ship_date, ship_time, delivery_date, delivery_time, paid_date, orgin_address, destination_address, mail_type, notes) VALUES ('934810918767', '96356', '076653', '2022-09-09', '13:30:00', '2022-09-12', '14:30:00', '13:30:00', '1300 Eagle Rd, Wayne PA 19087', '308 Quail Run Bradyville, Tennessee(TN), 37026', 'USPS', 'Package')
INSERT INTO outgoing_shipments (tracking_numbers, cust_id, employee_id, ship_date, ship_time, delivery_date, delivery_time, paid_date, orgin_address, destination_address, mail_type, notes) VALUES ('252430716344', '26434', '23121', '2022-11-25', '16:30:00', '2022-11-28', '15:42:00', '16:30:00', '1300 Eagle Rd, Wayne PA 19087', '2857 W 98th Pl Evergreen Park, Illinois(IL), 60805', 'FedEx', 'Package')
INSERT INTO outgoing_shipments (tracking_numbers, cust_id, employee_id, ship_date, ship_time, delivery_date, delivery_time, paid_date, orgin_address, destination_address, mail_type, notes) VALUES ('751974912258', '76356', '076543', '2022-10-15', '15:00:00', '2022-10-20', '15:04:00', '15:00:00', '1300 Eagle Rd, Wayne PA 19087', '4855 Hustisford, Wisconsin(WI), 53034', 'UPS', 'Package')
INSERT INTO outgoing_shipments (tracking_numbers, cust_id, employee_id, ship_date, ship_time, delivery_date, delivery_time, paid_date, orgin_address, destination_address, mail_type, notes) VALUES ('290432154841', '34523', '076653', '2022-12-19', '15:30:00', '2022-12-30', '12:25:00', '15:30:00', '1300 Eagle Rd, Wayne PA 19087', '946 Sheridan Rd Winthrop Harbor, Illinois(IL), 60096', 'USPS', 'Envelope')
INSERT INTO outgoing_shipments (tracking_numbers, cust_id, employee_id, ship_date, ship_time, delivery_date, delivery_time, paid_date, orgin_address, destination_address, mail_type, notes) VALUES ('155826406179', '45623', '076543', '2022-02-13', '15:33:00', '2022-02-14', '15:55:00', '15:33:00', '1300 Eagle Rd, Wayne PA 19087', '5100 57th Ave Bladensburg, Maryland(MD), 20710', "FedEx", 'SHELF')
INSERT INTO outgoing_shipments (tracking_numbers, cust_id, employee_id, ship_date, ship_time, delivery_date, delivery_time, paid_date, orgin_address, destination_address, mail_type, notes) VALUES ('158546422639', '09234', '076653', '2022-08-23', '12:22:00', '2022-09-01', '13:30:00', '12:22:00', '1300 Eagle Rd, Wayne PA 19087', '5021 Fillmore Ave Alexandria, Virginia(VA), 22311', 'USPS', 'SHELF')
INSERT INTO outgoing_shipments (tracking_numbers, cust_id, employee_id, ship_date, ship_time, delivery_date, delivery_time, paid_date, orgin_address, destination_address, mail_type, notes) VALUES ('150093498291', '01244', '23121', '2022-11-21', '11:21:00', '2022-11-24', '15:30:00', '11:21:00', '1300 Eagle Rd, Wayne PA 19087', '385 Culvers Ln New Haven, Kentucky(KY), 40051', 'UPS', 'SHELF')
INSERT INTO outgoing_shipments (tracking_numbers, cust_id, employee_id, ship_date, ship_time, delivery_date, delivery_time, paid_date, orgin_address, destination_address, mail_type, notes) VALUES ('866838903606', '52124', '019991', '2022-04-18', '17:00:00', '2022-04-23', '15:45:00', '17:00:00', '1300 Eagle Rd, Wayne PA 19087', '14650 State Rte #53 W Upper Sandusky, Ohio(OH), 43351', 'FedEx', 'Envelope')
INSERT INTO outgoing_shipments (tracking_numbers, cust_id, employee_id, ship_date, ship_time, delivery_date, delivery_time, paid_date, orgin_address, destination_address, mail_type, notes) VALUES ('760261834350', '09576', '019991', '2022-04-27', '14:59:00', '2022-04-28', '15:45:00', '14:59:00', '1300 Eagle Rd, Wayne PA 19087', '18 Albertson Way Bristol, Connecticut(CT), 06010', 'FedEx', 'Envelope')

--STUDENTS SENDING OUT SHIPMENTS--
INSERT INTO outgoing_shipments (tracking_numbers, cust_id, employee_id, ship_date, ship_time, delivery_date, delivery_time, paid_date, orgin_address, destination_address, mail_type, notes) VALUES ('034771307962', '65457', '023121', '2022-02-12', '13:29:00', '2022-02-14', '15:32:00', '13:29:00', '1300 Eagle Rd, Wayne PA 19087', '337 Pecan St Levelland, Texas(TX), 79336', 'UPS', 'SHELF')
INSERT INTO outgoing_shipments (tracking_numbers, cust_id, employee_id, ship_date, ship_time, delivery_date, delivery_time, paid_date, orgin_address, destination_address, mail_type, notes) VALUES ('113392146087', '87547', '00128',  '2022-09-11', '11:52:00', '2022-09-18', '14:59:00', '11:52:00', '1300 Eagle Rd, Wayne PA 19087', '8363 80th Hwy Ruston, Louisiana(LA), 71270', 'FedEx', 'Package')
INSERT INTO outgoing_shipments (tracking_numbers, cust_id, employee_id, ship_date, ship_time, delivery_date, delivery_time, paid_date, orgin_address, destination_address, mail_type, notes) VALUES ('847130429998', '12353', '023121', '2022-12-12', '15:22:00', '2022-12-21', '15:15:00', '15:22:00', '1300 Eagle Rd, Wayne PA 19087', '711 Bedford Ln New Castle, Delaware(DE), 19720', 'UPS', 'Package')
INSERT INTO outgoing_shipments (tracking_numbers, cust_id, employee_id, ship_date, ship_time, delivery_date, delivery_time, paid_date, orgin_address, destination_address, mail_type, notes) VALUES ('522096780712', '35234', '098988', '2022-12-12', '12:43:00','2022-12-23', '15:12:00', '12:43:00', '1300 Eagle Rd, Wayne PA 19087', '348 Silver Lake Dr Ocracoke, North Carolina(NC), 27960', 'UPS', 'Package')
INSERT INTO outgoing_shipments (tracking_numbers, cust_id, employee_id, ship_date, ship_time, delivery_date, delivery_time, paid_date, orgin_address, destination_address, mail_type, notes) VALUES ('262873198406', '76567', '00128',  '2022-12-12', '10:30:00', '2022-12-14', '13:30:00', '10:30:00', '1300 Eagle Rd, Wayne PA 19087', '6097 67th Hwy Slaughter, Louisiana(LA), 70777', 'UPS', 'Package')
INSERT INTO outgoing_shipments (tracking_numbers, cust_id, employee_id, ship_date, ship_time, delivery_date, delivery_time, paid_date, orgin_address, destination_address, mail_type, notes) VALUES ('437492192038', '22412', '098988', '2022-09-12', '15:20:00', '2022-09-23', '13:39:00', '15:20:00', '1300 Eagle Rd, Wayne PA 19087', '1525 S Plummer Ave Chanute, Kansas(KS), 66720', 'UPS', 'Envelope')
INSERT INTO outgoing_shipments (tracking_numbers, cust_id, employee_id, ship_date, ship_time, delivery_date, delivery_time, paid_date, orgin_address, destination_address, mail_type, notes) VALUES ('005006703251', '87588', '023121', '2022-11-21', '14:24;00', '2022-12-05', '15:50:00', '2022-11-21', '1300 Eagle Rd, Wayne PA 19087', '684 E 189th St Scranton, Kansas(KS), 66537', 'FedEx', 'Envelope')
INSERT INTO outgoing_shipments (tracking_numbers, cust_id, employee_id, ship_date, ship_time, delivery_date, delivery_time, paid_date, orgin_address, destination_address, mail_type, notes) VALUES ('071078106761', '65498', '098988', '2022-04-03', '12:22:00', '2022-04-12', '15:30:00', '2022-04-03', '1300 Eagle Rd, Wayne PA 19087', '1050 Old Us 119 Hwy S Homer City, Pennsylvania(PA), 15748', 'FedEx', 'Package')
INSERT INTO outgoing_shipments (tracking_numbers, cust_id, employee_id, ship_date, ship_time, delivery_date, delivery_time, paid_date, orgin_address, destination_address, mail_type, notes) VALUES ('290079079886', '32543', '00128', '2022-05-03', '9:50:00', '2022-05-11', '14:30:00', '2022-05-03', '1300 Eagle Rd, Wayne PA 19087', '217 Winesap Ct Janesville, Wisconsin(WI), 53548', 'FedEx', 'SHELF')
INSERT INTO outgoing_shipments (tracking_numbers, cust_id, employee_id, ship_date, ship_time, delivery_date, delivery_time, paid_date, orgin_address, destination_address, mail_type, notes) VALUES ('448071707456', '76543', '00128', '2022-02-02', '10:02:00', '2022-03-01', '14:00:00', '2022-02-02', '1300 Eagle Rd, Wayne PA 19087', '101 Tipperary Dr Phoenixville, Pennsylvania(PA), 19460', 'UPS', 'Envelope')



------------------------------------------customers------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
--FACULTy CUSTOMERS--
INSERT INTO customers (cust_id, student_id, faculty_id, cust_name, email, cust_contact_number) VALUES ('19482', NULL, '85001', 'William Storm','wstorm@eastern.edu','610-342-1461');
INSERT INTO customers (cust_id, student_id, faculty_id, cust_name, email, cust_contact_number) VALUES ('23532', NULL, '85002', 'Lucas Stromberg','lstromberg@eastern.edu','610-342-1462');
INSERT INTO customers (cust_id, student_id, faculty_id, cust_name, email, cust_contact_number) VALUES ('63467', NULL, '10101', 'Walter Huddell','whuddell@eastern.edu','610-225-5530');
INSERT INTO customers (cust_id, student_id, faculty_id, cust_name, email, cust_contact_number) VALUES ('96356', NULL, '10102', 'Gregory Longo','glongo@eastern.edu','610-225-5531');
INSERT INTO customers (cust_id, student_id, faculty_id, cust_name, email, cust_contact_number) VALUES ('26434', NULL, '10103', 'Nicola McLallen', 'nmcLallen@eastern.edu','610-225-5532');
INSERT INTO customers (cust_id, student_id, faculty_id, cust_name, email, cust_contact_number) VALUES ('76356', NULL, '10104', 'Micheal Morabito', 'mmorabito@eastern.edu','610-225-5533');
INSERT INTO customers (cust_id, student_id, faculty_id, cust_name, email, cust_contact_number) VALUES ('34523', NULL, '10105', 'Brandi Henry', 'bhenry@eastern.edu','610-225-5534');
INSERT INTO customers (cust_id, student_id, faculty_id, cust_name, email, cust_contact_number) VALUES ('45623', NULL, '76000', 'Lorie Thomas','lthomas@eastern.edu','610-342-1470');
INSERT INTO customers (cust_id, student_id, faculty_id, cust_name, email, cust_contact_number) VALUES ('09234', NULL, '76001', 'Mary jones','mjones@eastern.edu','610-342-1471');
INSERT INTO customers (cust_id, student_id, faculty_id, cust_name, email, cust_contact_number) VALUES ('01244', NULL, '36004', 'Jeanne Bundens','jbundens@eastern.edu','610-437-1441');
INSERT INTO customers (cust_id, student_id, faculty_id, cust_name, email, cust_contact_number) VALUES ('52124', NULL, '36005', 'Joseph Karpinski','jkarpinski@eastern.edu','610-437-1442');
INSERT INTO customers (cust_id, student_id, faculty_id, cust_name, email, cust_contact_number) VALUES ('09576', NULL, '36058', 'Jeffrey Lawton','jlawton@eastern.edu','610-437-1446');

--STUDENT CUSTOMERS--
INSERT INTO customers (cust_id, student_id, faculty_id, cust_name, email, cust_contact_number) VALUES ('65457','019991', NULL, 'Jules','Brandt jules.brandt@eastern.edu', '419-326-0712');
INSERT INTO customers (cust_id, student_id, faculty_id, cust_name, email, cust_contact_number) VALUES ('87547','023121', NULL, 'Juan','Chavez juan.chavez@eastern.edu', ' 231-881-4310');
INSERT INTO customers (cust_id, student_id, faculty_id, cust_name, email, cust_contact_number) VALUES ('12353','044552', NULL, 'Jah Peltier', 'jah.peltier@eastern.edu', '215-547-9097');
INSERT INTO customers (cust_id, student_id, faculty_id, cust_name, email, cust_contact_number) VALUES ('35234','045678', NULL, 'Chance Levy', 'chance.levy@eastern.edu', ' 505-644-0457');
INSERT INTO customers (cust_id, student_id, faculty_id, cust_name, email, cust_contact_number) VALUES ('76567','054321', NULL, 'Walter Williams', 'walter.williams@eastern.edu', '505-644-0227');
INSERT INTO customers (cust_id, student_id, faculty_id, cust_name, email, cust_contact_number) VALUES ('22412','055739', NULL, 'Jose Sanchez', 'jose.sanchez@eastern.edu', ' 208-541-4879');
INSERT INTO customers (cust_id, student_id, faculty_id, cust_name, email, cust_contact_number) VALUES ('87588','070557', NULL, 'Jon Snow', 'jon.snow@eastern.edu', ' 582-222-1973');
INSERT INTO customers (cust_id, student_id, faculty_id, cust_name, email, cust_contact_number) VALUES ('65498','076543', NULL, 'Micheal Brown', 'micheal.brown@eastern.edu', '202-897-4143');
INSERT INTO customers (cust_id, student_id, faculty_id, cust_name, email, cust_contact_number) VALUES ('32543','076653', NULL, 'Trevor Aoi', 'trevor.aoi@eastern.edu', '512-415-4114');
INSERT INTO customers (cust_id, student_id, faculty_id, cust_name, email, cust_contact_number) VALUES ('76543','098765', NULL, 'Nick Bourikas', 'nick.bourikas@eastern.edu', '505-712-7572');
