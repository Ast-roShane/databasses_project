--------New queries--------------



-----------------query1----------------------
/* List all faculty members with their faculty id and which building they teach in.
Then list all faculty and student members at Eastern university who have the same first name as each other. */

  SELECT DISTINCT faculty.first_name, faculty_id, building
  FROM faculty, departments
  WHERE faculty.department_id = departments.department_id;

  SELECT ALL faculty.first_name, faculty.last_name, faculty_id, students.first_name, students.last_name, student_id
  FROM faculty
  INNER JOIN students ON faculty.first_name = students.first_name;


-----------------query2----------------------

/* How many packages were routed to the student with the name of Michael Zhang? IF Michael had received any packages,
how many did he recieve each day and at what times did the packages arrive?*/

	--THIS QUERY COUNTS HOW MANY INCOMING PACKAGES MICHAEL HAS RECEIVED
	SELECT COUNT(incoming_shipments.student_id)
	FROM incoming_shipments
	WHERE incoming_shipments.student_id = '000128';

  --THIS QUERY CHECKS HOW MANY PACKAGES MICHAEL HAD RECEIVED ON EACH DAY AND WHAT TIMES THE PACKAGES HAVE ARRIVED--
	SELECT students.first_name, date_arrived, time_arrived, COUNT(incoming_shipments.student_id)
	FROM incoming_shipments,students
	WHERE incoming_shipments.student_id = '000128' AND students.student_id = '000128'
	GROUP BY students.first_name, incoming_shipments.date_arrived, incoming_shipments.time_arrived;





-----------------query3----------------------
  SELECT * origin_address, destination_address
  FROM outgoing_shipments


-----------------query4----------------------
/* A student whose name is Aroon Shankar at Eastern university was just hired at the mail center.
Add a new employee to the database with the employee values and then output the employees list in alphabetical order by first name */

  INSERT INTO employees (employees_id, first_name, last_name, email, contact_number, hourly_rate) VALUES (21589, 'Aroon', 'Shankar', 'aroon.shankar@eastern.edu', '582-529-5188', 9.00 )

  --CHECKING TO SEE IF THE STUDENT WAS ADDED ONTO THE EMPLOYEES TABLE AND OUTPUTTING THE LIST IN ALPHABETICAL ORDER--
  SELECT first_name, last_name
  FROM employees
  ORDER BY first_name ASC;


  ---------------------query8------------------
  SELECT cust_id,cust_name
  FROM customers
  WHERE student_id and faculty_id is NULL

--------------------query6-------------------
  SELECT *
  FROM faculty
  WHERE
