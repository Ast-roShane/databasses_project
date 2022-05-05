#-----SQLite test

import sqlite3
conn=sqlite3.connect('mailcenter.db')

c=conn.cursor()

c.execute("""CREATE TABLE students (
		student_id		integer,
		first_name		text,
		last_name		text,
		email 			text,
		contact_number  text
			)""")

conn.commit()

conn.close()
