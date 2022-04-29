/* 	University Database DDL	*/

--jeremiah Pha and Roshane Bent
-- hi hi hi
DROP TABLE students CASCADE;
DROP TABLE employees CASCADE;
DROP TABLE departments CASCADE;
DROP TABLE driving_details CASCADE;
DROP TABLE faculty CASCADE;
DROP TABLE customers CASCADE;
DROP TABLE outgoing_shipments CASCADE;
DROP TABLE incoming_shipments CASCADE;

	CREATE TABLE IF NOT EXISTS students (
		student_id	INTEGER,
		first_name	VARCHAR(20),
		last_name		VARCHAR(20),
		email 			VARCHAR(25),
		contact_number VARCHAR(25),

		CONSTRAINT students_pkey PRIMARY KEY (student_id)
	);

	CREATE TABLE IF NOT EXISTS employees (
		employees_id		INTEGER,
		first_name			varchar(20),
		last_name				varchar(20),
		email						VARCHAR(25),
		contact_number  INTEGER,
		hourly_rate			VARCHAR(25),

		CONSTRAINT employees_pkey PRIMARY KEY (employees_id)

	);

	CREATE TABLE IF NOT EXISTS departments (
		department_id		INTEGER,
		faculty_count		INTEGER,
		building				VARCHAR(30),

		CONSTRAINT departments_pkey PRIMARY KEY (department_id)

	);

	CREATE TABLE IF NOT EXISTS driving_details (
		van_id									INTEGER,
		employees_id						INTEGER,
		driver_license_number		INTEGER,
		time_left								DATE,
		datee 									DATE,
		time_arrived							DATE,
		gas_amount							VARCHAR(25),


		CONSTRAINT driving_details_pkey PRIMARY KEY (van_id),
		CONSTRAINT driving_details_fkey	FOREIGN KEY (employees_id) REFERENCES employees (employees_id)
			ON UPDATE CASCADE
			ON DELETE CASCADE
	);

	CREATE TABLE IF NOT EXISTS faculty (
		faculty_id			INTEGER,
		department_id		INTEGER,
		first_name			VARCHAR(20),
		last_name				VARCHAR(20),
		email						VARCHAR(25),
		contact_number	VARCHAR(25),

		CONSTRAINT faculty_pkey PRIMARY KEY (faculty_id),
		CONSTRAINT faculty_fkey FOREIGN KEY (department_id) REFERENCES departments (department_id)
			ON UPDATE CASCADE
			ON DELETE CASCADE
	);


	CREATE TABLE IF NOT EXISTS customers (
		cust_id			INTEGER,
		student_id	INTEGER,
		faculty_id	INTEGER,
		cust_name		VARCHAR(20),
		email				VARCHAR(25),
		cust_contact_numbers VARCHAR(25),

		CONSTRAINT customers_pkey PRIMARY KEY (cust_id),
		CONSTRAINT customers_fkey FOREIGN KEY (student_id) REFERENCES students (student_id)
				ON UPDATE CASCADE
				ON DELETE CASCADE
	);

	CREATE TABLE IF NOT EXISTS outgoing_shipments (
		tracking_numbers INTEGER,
		cust_id INTEGER,
		employees_id INTEGER,
		ship_date		DATE,
		ship_time DATE,
		delivery_date   DATE,
		delivery_time DATE,
		paid_date DATE,
		origin_address VARCHAR (30),
		destination_address VARCHAR(30),
		mail_type VARCHAR(20),
		notes VARCHAR(30),

		CONSTRAINT outgoing_shipments_pkey PRIMARY KEY (tracking_numbers),
		CONSTRAINT outgoing_shipments_fkey1 FOREIGN KEY (cust_id) REFERENCES customers (cust_id),
		CONSTRAINT outgoing_shipments_fkey2 FOREIGN KEY (employees_id) REFERENCES employees (employees_id)
			ON UPDATE CASCADE
			ON DELETE CASCADE

		);

	CREATE TABLE IF NOT EXISTS incoming_shipments (
		tracking_number INTEGER,
		student_id INTEGER,
		faculty_id INTEGER,
		employees_id INTEGER,
		date_arrived DATE,
		time_arrived DATE,
		comments VARCHAR(30),

		CONSTRAINT incoming_shipments_pkey PRIMARY KEY (tracking_number),
		CONSTRAINT incoming_shipments_fkey1 FOREIGN KEY (student_id) REFERENCES students (student_id),
		CONSTRAINT incoming_shipments_fkey2 FOREIGN KEY (faculty_id) REFERENCES faculty (faculty_id),
		CONSTRAINT incoming_shipments_fkey3 FOREIGN KEY (employees_id) REFERENCES employees (employees_id)
			ON UPDATE CASCADE
			ON DELETE CASCADE
	);
