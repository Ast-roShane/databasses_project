/* 	University Database DDL	*/

--jeremiah Pha and Roshane Bent
-- hi hi hi
	CREATE TABLE IF NOT EXISTS students (
		student_id	INTEGER,
		first_name	VARCHAR(20),
		last_name		VARCHAR(20),
		email 			VARCHAR(25),
		contact_number INTEGER,

		CONSTRAINT students_pkey PRIMARY KEY (student_id)
	);

	CREATE TABLE IF NOT EXISTS employees (
		employees_id		INTEGER,
		first_name			varchar(20),
		last_name				varchar(20),
		email						VARCHAR(25),
		contact_number  INTEGER,
		hourly_rate			INTEGER

		CONSTRAINT employees_pkey PRIMARY KEY (employees_id)

	);

	CREATE TABLE IF NOT EXISTS departments (
		department_id		INTEGER,
		faculty_count		INTEGER,
		building				VARCHAR,

		CONSTRAINT departments_pkey PRIMARY KEY (department_id)

	);

	CREATE TABLE IF NOT EXISTS driving_details (
		van_id									INTEGER,
		employees_id						INTEGER,
		driver_license_number		INTEGER,
		time_left								DATETIME,
		time_arrived						DATETIME,
		gas_amount							FLOAT,


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
		contact_number	INTEGER,

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
		cust_contact_numbers INTEGER,

		CONSTRAINT customers_pkey PRIMARY KEY (cust_id),
		CONSTRAINT customers_fkey FOREIGN KEY (student_id) REFERENCES students (student_id)
				ON UPDATE CASCADE
				ON DELETE CASCADE
	);

	CREATE TABLE IF NOT EXISTS outgoing_shipments (
		tracking_numbers INTEGER,
		cust_id INTEGER,
		employees_id INTEGER,
		ship_time DATETIME,
		delivery_time DATETIME,
		paid_date DATE,
		origin_address VARCHAR (30),
		destination_address VARCHAR(30),
		mail_type VARCHAR(20),
		notes VARCHAR(30),

		CONSTRAINT outgoing_shipments_pkey PRIMARY KEY (tracking_numbers),
		CONSTRAINT outgoing_shipments_fkey FOREIGN KEY (cust_id) REFERENCES customers (cust_id),
		CONSTRAINT outgoing_shipments_fkey FOREIGN KEY (employees_id) REFERENCES employees (employees_id)
			ON UPDATE CASCADE
			ON DELETE CASCADE

		);

	CREATE TABLE IF NOT EXISTS incoming_shipments (
		tracking_number INTEGER,
		student_id INTEGER,
		faculty_id INTEGER,
		employees_id INTEGER,
		time_arrived DATETIME,
		comments VARCHAR(30),

		CONSTRAINT incoming_shipments_pkey PRIMARY KEY (tracking_number),
		CONSTRAINT incoming_shipments_fkey FOREIGN KEY (student_id) REFERENCES students (student_id),
		CONSTRAINT incoming_shipments_fkey FOREIGN KEY (faculty_id) REFERENCES faculty (faculty_id),
		CONSTRAINT incoming_shipments_fkey FOREIGN KEY (employees_id) REFERENCES employees (employees_id)
			ON UPDATE CASCADE
			ON DELETE CASCADE
	);
