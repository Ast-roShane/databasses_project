--Jeremiah Pha and Roshane Bent--
--FINAL PROJECT QUERIES--
--DATABASES--
--MORABITO--
--4/18/20--



---------------------------------------------
-----------------query1----------------------
/* List all faculty members with their faculty id and which building they teach in.
Then list all faculty and student members at Eastern university who have the same first name as each other. */

  -- Lists all faculty members with their faculty id and which building they teach in.
  SELECT DISTINCT faculty.first_name, faculty_id, building
  FROM faculty, departments
  WHERE faculty.department_id = departments.department_id;

  --list all faculty and student members at Eastern university who have the same first name as each other.--
  SELECT ALL faculty.first_name, faculty.last_name, faculty_id, students.first_name, students.last_name, student_id
  FROM faculty
  INNER JOIN students ON faculty.first_name = students.first_name;


--------------------------------------------
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

----THIS QUERY LISTS THE NAMES OF STUDENTS WHO HAS NOT RECIEVED OR SHIPPED A PACKAGE AT THE UNIVERSITY
  SELECT *
  FROM ((SELECT*
		FROM incoming_shipments
		WHERE incoming_shipments.student_id IS NULL)AS foo
		NATURAL FULL OUTER JOIN
		(SELECT *
		FROM customers
		WHERE customers.student_id IS NULL)AS bar);
--  WHERE student_id IS NULL

*/

---------------------------------------------
-----------------query4----------------------
/* A student whose name is Aroon Shankar at Eastern university was just hired at the mail center.
Add a new employee to the database with the employee values and then output the employees list in alphabetical order by first name */

  INSERT INTO employees (employees_id, first_name, last_name, email, contact_number, hourly_rate) VALUES (21589, 'Aroon', 'Shankar', 'aroon.shankar@eastern.edu', '582-529-5188', 9.00 )

  --CHECKING TO SEE IF THE STUDENT WAS ADDED ONTO THE EMPLOYEES TABLE AND OUTPUTTING THE LIST IN ALPHABETICAL ORDER--
  SELECT first_name, last_name
  FROM employees
  ORDER BY first_name ASC;

  --------------------------------------------------
  --------------------query5------------------------
  /* (STORED PROCEDURE) A NEW student Jeremiah Pha has decided to transfer here at Eastern.
   Add Jeremiah’s information into the mail center's student list with his student information using a stored procedure. */

  --DROPS THE PROCEDURE IF NEEDED--
  DROP PROCEDURE addStudent CASCADE;


  --PROCEDURE FUNCTION TO ADD JEREMIAH PHA TO THE MAIL CENTER LIST--
  CREATE OR REPLACE PROCEDURE addStudent
  (
  	s_student_id	INTEGER,
  	s_first_name	VARCHAR(20),
  	s_last_name		VARCHAR(20),
  	s_email 			VARCHAR(50),
  	s_contact_number VARCHAR(25)

  )
  LANGUAGE PLPGSQL AS
  $$
  BEGIN
  	INSERT INTO students (student_id, first_name, last_name, email, contact_number) VALUES
  	(
  	s_student_id,
  	s_first_name,
  	s_last_name,
  	s_email,
  	s_contact_number
  	) RETURNING student_id INTO s_student_id;
  END
  $$;

  --CALLS THE FUNCTION AND INSERTS THE NEW STUDENT DATA INFO--
  CALL addStudent (1249, 'Jeremiah', 'Pha', 'jeremiah.pha@eastern.edu', '12412412');

  --SHOWS THE OUTPUT OF THE QUERY AFTER ADDING STUDENT--
  SELECT *
  FROM students;


  ---------------------------------------------
  ---------------------query6------------------
  /*The university has the budget to increase the hourly rate for employees at the mail center.
  Employees getting paid less than $12 would be considered underpaid. So they will recieve a raise a 15% raise and employees who are getting over 8 will recieve a 5% raise.*/

  ----THIS QUERY HIGHLIGHTS ALL EMPLOYEES GETTING PAID UNDER $12 AS UNDERPAID AND GIVES THE EMPLOYEES A 15% RAISE. ANY EMPLOYEE GETTING PAID MORE THAN 8 WILL RECIEVE A 5% RAISE.
  SELECT employees_id,first_name,last_name,
      CASE
	 	WHEN hourly_rate< 12.00 THEN 'UNDERPAID'
      END AS pay_status
	  FROM employees;
	--------------------once ran run this----------------

	UPDATE employees
  	SET hourly_rate = CASE
                       		WHEN hourly_rate<10.00 THEN hourly_rate*1.05
                       		ELSE hourly_rate*1.15
                     	 END;

  -------------------------------------------
  ------------------query8-------------------


  SELECT cust_name,email,cust_contact_numbers
  FROM customers NATURAL LEFT OUTER JOIN students
  WHERE faculty_id IS NULL AND student_id IS NULL






  --------------------------------------------------
  --------------------query9------------------------
  -------NAME ALL THE EMPLOYEES THAT ROUTED PACKAGES ON APRIL 23 2022-----
  SELECT first_name,last_name
  FROM employees JOIN  incoming_shipments ON employees.employees_id = incoming_shipments.employees_id
  WHERE date_arrived = '2022-04-23'


  -----------------------------------------------------------

  CREATE OR REPLACE scan speed(packages VARCHAR(20))
  RETURNS INTEGER
  LANGUAGE plpgsql
  AS
  $$
      -- Variable Declarations
      DECLARE
        d_count INTEGER;
      -- SQL Statements
      BEGIN
        <...>
      END;
  $$;


  CREATE OR REPLACE FUNCTION instructor_of(dept_name VARCHAR(20))
  RETURNS TABLE (IDD VARCHAR(5),
                namee VARCHAR(20),
                dept_namee VARCHAR(20),
                salaryy NUMERIC(8,2))

  LANGUAGE plpgsql
  AS
  $$
      -- SQL Statements
      BEGIN
        RETURN QUERY
        SELECT ID, name, instructor.dept_name, salaryy
        FROM instructor
        WHERE instructor.dept_name=instructor_of.dept_name;
      END;
  $$;


----A function that calculates how many packages a student recieved in a DAY

CREATE OR REPLACE FUNCTION packages_recieved(s_id INTEGER, datee DATE)
RETURNS INTEGER
LANGUAGE plpgsql
AS
$$
    DECLARE num_packages INTEGER;



      BEGIN
          SELECT COUNT(*) INTO num_packages
          FROM incoming_shipments
          WHERE student_id = s_id AND datee = date_arrived;

          RETURN num_packages;
      END;
$$;

SELECT packages_recieved(000128,'2022-04-22')
    -----------------------
CREATE OR REPLACE FUNCTION packages_recieved(s_id INTEGER)
RETURNS INTEGER
LANGUAGE plpgsql
AS
$$
    DECLARE num_packages INTEGER;
    DECLARE datee         DATE;


      BEGIN

          SELECT EXTRACT(DATE FROM NOW()) INTO datee;
          SELECT COUNT(*) INTO num_packages
          FROM incoming_shipments
          WHERE student_id = s_id AND datee = date_arrived;

          RETURN num_packages;
      END;
$$;


--------------------------------------------------
--------------------query10------------------------
/* The president of Eastern University wants to see a list of all of the faculty names. Create a view to do so.*/
--Drops view if needed--
DROP VIEW allFaculty CASCADE;

--CREATES VIEW--
CREATE VIEW allFaculty AS
  SELECT first_name, last_name
  FROM faculty;
SELECT *
FROM allFaculty;



--------------------------------------------------
--------------------query11------------------------
/*The manager of the Mail center wants to know all the wages of the employees for the purpose of seeing if a raise should be given to the employees.
 Create a view to do so. */

--DROPS VIEW IF NEEDED--
DROP VIEW employeewages CASCADE;

--CREATES VIEW--
CREATE VIEW employeewages AS
	SELECT first_name, last_name, hourly_rate
	FROM employees;
SELECT *
FROM employeewages;
