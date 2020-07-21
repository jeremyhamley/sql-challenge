# sql-challenge

## SQL Data Engineering and Data Analysis 



The SQL challenge consists of the follwing two areas:   SQL Data Engineering and Data Analysis using SQL


## SQL Data Engineering
The SQL Data Engineering section of this challenge focuses on the design of a database to hold fictional employee information.  

The database will consist of 6 tables:
 * Departments
 * Employee and Department
 * Department and Manager
 * All Employees
 * Employees and Salary
 * Titles

The ERD diagram below was created using:  [http://www.quickdatabasediagrams.com](http://www.quickdatabasediagrams.com)

The SQL code for database the schema was exported from quickdatabasediagrams as well and is saved in this repo in the file:    employee_schema.sql

Once the database and schema were created, the tables were populated by importing 6 CSV files.

![erd](/employee_sql/employeeerd.png)


# Data Analysis
The Data Analysis section of this challenge is broken into two parts:

* SQL Queries
* Pandas/ SQLAlchemy/ MatPlotLib

## SQL Queries

This section uses SQL to query the database.  The queries are saved in this repo in the file:   employee_quiries

SQL queries include:

1. list all employees and display info:  employee number, last name, first name, sex, and salary.

2. list all employees hired in 1986 and display info:  first name, last name, and hire date.

3. list all department managers and display info:  department number, department name, manager's emp. number, manager's last name, and manager's first name.

4. list all employees and display department info:  employee number, last name, first name, and department name.

5. list all employees whose first name is "Hercules" and last name begins with "B" and display info:  first name, last name, and sex

6. List all employees in the Sales department and display info:  employee number, last name, first name, and department name
	
7. List all employees in the Sales and Development departments and display info:  employee number, last name, first name, and department name

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

## Pandas/ SQLAlchemy/ MatPlotLib

This section uses Pandas, SQLAlchemy, and MatPlotLib to connect to the database and query the database.  The queries are saved in this repo in the jupyter notebook file:   employee_analysis

Analysis using Pandas, SQLAlchemy, and MatPlotLib include:

1. Create a histogram to visualize the most common salary ranges for employees.

2. Create a bar chart of average salary by title.

