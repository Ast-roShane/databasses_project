"""
    test a SQLite database connection locally
    assumes database file is in same location
    as this .py file
"""
from flask import Flask, render_template, redirect, url_for
from flask_bootstrap import Bootstrap
from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField
from wtforms.validators import DataRequired
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy.sql import text

import pymysql
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy.sql import text

app = Flask(__name__)

# assumes you did not create a password for your database
# and the database username is the default, 'root'
# change if necessary
username = 'root'
password = "A$tro1418"
userpass = 'mysql+pymysql://' + username + ':' + password + '@'
server  = '127.0.0.1'
# change to YOUR database name, with a slash added as shown
dbname   = '/University_mailcenter'

# this socket is going to be very different on a WINDOWS computer
# try 'C:/xampp/mysql/mysql.sock'
socket   = '?unix_socket=/Applications/XAMPP/xamppfiles/var/mysql/mysql.sock'

# put them all together as a string that shows SQLAlchemy where the database is
app.config['SQLALCHEMY_DATABASE_URI'] = userpass + server + dbname + socket

app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True

# this variable, db, will be used for all SQLAlchemy commands
db = SQLAlchemy(app)

@app.route('/jerimiah')
def jerimiah():
    return render_template("resume_jerimiah.html")

@app.route('/roshane')
def roshane():
    return render_template("resume_shane.html")




# NOTHING BELOW THIS LINE NEEDS TO CHANGE
# this route will test the database connection and nothing more
@app.route('/')
def testdb():
    try:
        db.session.query('1').from_statement(text('SELECT 1')).all()
        return '<h1>It works.</h1>'
    except Exception as e:
        # see Terminal for description of the error
        print("\nThe error:\n" + str(e) + "\n")
        return '<h1>Something is broken.</h1>'

if __name__ == '__main__':
    app.run(debug=True)
