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
INSERT INTO departments VALUES ('Biology', 'Watson', '90000');
INSERT INTO departments VALUES ('Comp. Sci.', 'Taylor', '100000');
INSERT INTO departments VALUES ('Elec. Eng.', 'Taylor', '85000');
INSERT INTO departments VALUES ('Finance', 'Painter', '120000');
INSERT INTO departments VALUES ('History', 'Painter', '50000');
INSERT INTO departments VALUES ('Music', 'Packard', '80000');
INSERT INTO departments VALUES ('Physics', 'Watson', '70000');
------------------------------------------------------------------------
---------------------------------faculty--------------------------------

INSERT INTO faculty VALUES ('10101', 'Srinivasan', 'Comp. Sci.', '65000');
INSERT INTO faculty VALUES ('12121', 'Wu', 'Finance', '90000');
INSERT INTO faculty VALUES ('15151', 'Mozart', 'Music', '40000');
INSERT INTO faculty VALUES ('22222', 'Einstein', 'Physics', '95000');
INSERT INTO faculty VALUES ('32343', 'El Said', 'History', '60000');
INSERT INTO faculty VALUES ('33456', 'Gold', 'Physics', '87000');
INSERT INTO faculty VALUES ('45565', 'Katz', 'Comp. Sci.', '75000');
INSERT INTO faculty VALUES ('58583', 'Califieri', 'History', '62000');
INSERT INTO faculty VALUES ('76543', 'Singh', 'Finance', '80000');
INSERT INTO faculty VALUES ('76766', 'Crick', 'Biology', '72000');
INSERT INTO faculty VALUES ('83821', 'Brandt', 'Comp. Sci.', '92000');
INSERT INTO faculty VALUES ('98345', 'Kim', 'Elec. Eng.', '80000');
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
