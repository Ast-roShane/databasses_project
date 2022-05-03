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
/*
 Find the ID and name of each student who has never received a package at the university.
*/
----THIS QUERY LISTS THE NAMES OF STUDENTS WHO HAS NOT RECIEVED A PACKAGE AT THE UNIVERSITY
  SELECT student_id, first_name,last_name
  FROM students NATURAL LEFT OUTER JOIN incoming_shipments
  WHERE student_id IS NULL


-----------------query4----------------------
/* A student whose name is Aroon Shankar at Eastern university was just hired at the mail center.
Add a new employee to the database with the employee values and then output the employees list in alphabetical order by first name */

  INSERT INTO employees (employees_id, first_name, last_name, email, contact_number, hourly_rate) VALUES (21589, 'Aroon', 'Shankar', 'aroon.shankar@eastern.edu', '582-529-5188', 9.00 )

  --CHECKING TO SEE IF THE STUDENT WAS ADDED ONTO THE EMPLOYEES TABLE AND OUTPUTTING THE LIST IN ALPHABETICAL ORDER--
  SELECT first_name, last_name
  FROM employees
  ORDER BY first_name ASC;


  ---------------------query6------------------
  /*The university has the budget to increase the hourly rate for employees at the mail center.
  Employees getting paid less than $8 would be considered underpaid. So they will recieve a raise a 15% raise and employees who are getting over 8 will recieve a 5% raise.*/
  ----THIS QUERY HIGHLIGHTS ALL EMPLOYEES GETTING PAID UNDER $8 AS UNDERPAID AND GIVES THE EMPLOYEES A 15% RAISE. ANY EMPLOYEE GETTING PAID MORE THAN 8 WILL RECIEVE A 5% RAISE.
  SELECT employee_id,first_name,last_name
      CASE
        WHEN hourly_rate<8.00 THEN 'UNDERPAID'
      END AS pay_status
    FROM employees


  UPDATE employees
  SET hourly_rate =  CASE
                        WHEN pay_status='UNDERPAID' THEN hourly_rate*1.05
                        ELSE hourly_rate*1.15
                      END;


--------------------query8-------------------

  SELECT cust_name,email,cust_contact_numbers
  FROM customers NATURAL LEFT OUTER JOIN faculty NATURAL LEFT OUTER JOIN students
  WHERE student_id,faculty_id IS NULL;
