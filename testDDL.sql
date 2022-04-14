/* 	University Database DDL	*/

--jeremiah Pha and Roshane Bent
-- hi hi hi
	CREATE TABLE classroom (
		building	varchar(15),
		room_number	varchar(7),
		capacity	numeric(4,0),
		CONSTRAINT classroom_pkey PRIMARY KEY (building, room_number)
	);

	CREATE TABLE students (
		ID			varchar(5),
		name		varchar(20) NOT NULL,
		dept_name	varchar(20),
		tot_cred	numeric(3,0) CHECK (tot_cred >= 0),
		CONSTRAINT student_pkey PRIMARY KEY (ID),
		CONSTRAINT student_fkey FOREIGN KEY (dept_name) REFERENCES department (dept_name)
			ON DELETE SET NULL
	);

	CREATE TABLE departments (
		dept_name	varchar(20),
		building	varchar(15),
		budget		numeric(12,2) CHECK (budget > 0.00),
		CONSTRAINT department_pkey PRIMARY KEY (dept_name)
	);

	CREATE TABLE driving_details(
		time_slot_id	varchar(4),
		day				varchar(1),
		start_hr		numeric(2) CHECK (start_hr >= 0 and start_hr < 24),
		start_min		numeric(2) CHECK (start_min >= 0 and start_min < 60),
		end_hr			numeric(2) CHECK (end_hr >= 0 and end_hr < 24),
		end_min			numeric(2) CHECK (end_min >= 0 and end_min < 60),
		CONSTRAINT time_slot_pkey PRIMARY KEY (time_slot_id, day, start_hr, start_min)
	);


	CREATE TABLE faculty (
		ID			varchar(5),
		name		varchar(20) NOT NULL,
		dept_name	varchar(20),
		salary		numeric(8,2) CHECK (salary > 29000),
		CONSTRAINT instructor_pkey PRIMARY KEY (ID),
		CONSTRAINT instructor_fkey FOREIGN KEY (dept_name) REFERENCES department (dept_name)
			ON DELETE SET NULL
	);

	CREATE TABLE outgoing_shipments (
		course_id		varchar(8),
		sec_id			varchar(8),
		semester		varchar(6) CHECK (semester in ('Fall', 'Winter', 'Spring', 'Summer')),
		year			numeric(4,0) CHECK (year > 1701 and year < 2100),
		building		varchar(15),
		room_number		varchar(7),
		time_slot_id	varchar(4),
		CONSTRAINT section_pkey PRIMARY KEY (course_id, sec_id, semester, year),
		CONSTRAINT section_fkey_1 FOREIGN KEY (course_id) REFERENCES course (course_id)
			ON DELETE CASCADE,
		CONSTRAINT section_fkey_2 FOREIGN KEY (building, room_number) REFERENCES classroom (building, room_number)
			ON DELETE SET NULL
		);

	CREATE TABLE incoming_shipments (
		ID			varchar(5),
		course_id	varchar(8),
		sec_id		varchar(8),
		semester	varchar(6),
		year		numeric(4,0),
		CONSTRAINT teaches_pkey PRIMARY KEY (ID, course_id, sec_id, semester, year),
		CONSTRAINT teaches_fkey_1 FOREIGN KEY (course_id, sec_id, semester, year) REFERENCES section (course_id, sec_id, semester, year)
			ON DELETE CASCADE,
		CONSTRAINT teaches_fkey_2 FOREIGN KEY (ID) REFERENCES instructor (ID)
			ON DELETE CASCADE
	);


	CREATE TABLE employees (
		s_ID	varchar(5),
		i_ID	varchar(5),
		CONSTRAINT advisor_pkey PRIMARY KEY (s_ID),
		CONSTRAINT advisor_fkey_1 FOREIGN KEY (i_ID) REFERENCES instructor (ID)
			ON DELETE SET NULL,
		CONSTRAINT advisor_fkey_2 FOREIGN KEY (s_ID) REFERENCES student (ID)
			ON DELETE CASCADE
	);
