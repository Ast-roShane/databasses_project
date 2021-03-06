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
/* A student whose name is Aroon Shankar at Eastern university was just hired at the mail center.
Add a new employee to the database with the employee values and then output the employees list in alphabetical order by first name */

  INSERT INTO employees (employees_id, first_name, last_name, email, contact_number, hourly_rate)
  VALUES (21589, 'Aroon', 'Shankar', 'aroon.shankar@eastern.edu', '582-529-5188', 9.00 )

  DELETE FROM employees
  WHERE employees_id= 21589

  --CHECKING TO SEE IF THE STUDENT WAS ADDED ONTO THE EMPLOYEES TABLE AND OUTPUTTING THE LIST IN ALPHABETICAL ORDER--
  SELECT first_name, last_name
  FROM employees
  ORDER BY first_name ASC;



  --------------------------------------------------
  --------------------query4------------------------
  /* A NEW student Jeremiah Pha has decided to transfer here at Eastern.
  Add Jeremiah???s information into the mail center's student list with his student information using a stored procedure. */

  -- DROPS PROCEDURE IF NEEDED--
  DROP PROCEDURE addStudent CASCADE;

  --CREATES MY STORED PROCEDURE--
  CREATE OR REPLACE PROCEDURE addStudent
      (
      s_student_id    INTEGER,
      s_first_name    VARCHAR(20),
      s_last_name        VARCHAR(20),
      s_email             VARCHAR(50),
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

  --CALLING FUNCTION TO ADD NEW STUDENT JEREMIAH WITH DATA INTO STUDENTS TABLE--
  CALL addStudent('32141','Jeremiah', 'Pha', 'jeremiah.pha@eastern.edu', '717-371-7119');

  --OUTPUTTING THE TABLE TO CHECK IF JEREMIAH PHA WAS ADDED TO THE MAIL CENTER STUDENTS TABLE--
  SELECT *
  FROM students;


----------------------------------------------------
--------------------query5------------------------
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
--------------------query6------------------------
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


  --------------------------------------------------
  ---------------------query7-----------------------
  /*The university has the budget to increase the hourly rate for employees at the mail center.
  Employees getting paid less than $12 would be considered underpaid. So they will recieve a raise a 15% raise and employees who are getting over $8 will receive a 5% raise.*/

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



  ---------------------------------------------
  --------------------query8-------------------
  /*The university's marketing team is interested in sending promotional information to all
customers at the mail center who are not students or faculty. */

  SELECT cust_name,email,cust_contact_numbers
  FROM customers NATURAL LEFT OUTER JOIN students
  WHERE faculty_id IS NULL AND student_id IS NULL;


  -------------------------------------------------
  --------------------------query9--------------
  /*There is a package that UPS said they delivered. The package was never scanned into the system and the
   Mail Center manager wanted a record of all employees responsible for routing packages on Apr 23, 2022.*/
  SELECT first_name,last_name
  FROM employees JOIN  incoming_shipments ON employees.employees_id = incoming_shipments.employees_id
  WHERE date_arrived = '2022-04-23'

  --------------------------------------------------
  --------------------query10------------------------
---- Write A function that calculates how many packages a student received in a DAY--

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

--outputting the packages received--
SELECT packages_recieved(000128,'2022-04-22')
------------------------------Query 11------------------------------------------------
---Write a function that calculates how many packages an employee sent out this year--

CREATE OR REPLACE FUNCTION packages_sent(e_id INTEGER)
RETURNS INTEGER
LANGUAGE plpgsql
AS
$$
    DECLARE num_packages INTEGER;


      BEGIN
          SELECT COUNT(*) INTO num_packages
          FROM outgoing_shipments
          WHERE employees_id = e_id AND ship_date BETWEEN '2022-01-01' AND '2022-12-31';

          RETURN num_packages;
      END;
$$;

SELECT packages_sent(023121)
-----------------------------query12--------------------------------------
-----------------------------Trigger function----------------------------
/*This is a function that moves the packages that were delivered  to the student or faculty member
 from the incoming_shipments table to the delivered_packages table once they are marked delivered.*/

        CREATE OR REPLACE FUNCTION Delivered()
        RETURNS TRIGGER
        LANGUAGE PLPGSQL
        AS
        $$
            DECLARE tracking      INTEGER;
            DECLARE datee         DATE;
            DECLARE timee         TIME;

            BEGIN
               SELECT CURRENT_DATE INTO datee;
               SELECT CURRENT_TIME INTO timee;


                INSERT INTO delivered_packages(tracking_number, student_id, faculty_id, employees_id, date_delivered,time_delivered)
                SELECT tracking_number, student_id, faculty_id, employees_id, datee, timee
                FROM incoming_shipments
                WHERE tracking_number = NEW.tracking_number;


                DELETE FROM incoming_shipments
                WHERE tracking_number = NEW.tracking_number;

                RETURN NEW;
            END;
        $$;

        CREATE TRIGGER updatePackStat
        AFTER UPDATE ON incoming_shipments
        FOR EACH ROW
        WHEN(NEW.commentt LIKE '%delivered%')
        EXECUTE PROCEDURE Delivered();

        -----------TEST QUERY---------------------
        UPDATE incoming_shipments
        SET commentt = 'delivered'
        WHERE tracking_number = 272116;

        SELECT *
        FROM delivered_packages

        SELECT *
        FROM incoming_shipments

        DELETE FROM delivered_packages
        --WHERE tracking_number = 272116;
