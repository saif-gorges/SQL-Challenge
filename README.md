# SQL Challenge - Employee Database

## Table of Contents
  * [Introduction](#introduction)
  * [Data Modelling](#model)
  * [Data Engineering](#engineering)

    

# Introduction

This project features an employee database at a corporation from the 1980s and 1990s. The employee information from that period is located in six CSV files.
A table was created that holds employees data in the CSVs, import the CSVs into a SQL database, and to answer the research questions: 


# <a name="model">Data Modelling</a>
Entity-Relationship Diagrams (ERD) were used to model the CSV data. The entities within the model are employees, departments, salaries, titles, department managers, and department employees. 
Please see the ERD below to visualize the relationships between entities/objects (primary key or foreign keys in a database). 


# <a name="engineering">Data Engineering</a>
The ERD (Entity Relationship Diagram) below was sketched out using 'Quick DBD.'
<br>![image](https://github.com/saif-gorges/sql-challenge/blob/main/EmployeeSQL/ERD.PNG)

# Data Analysis

There were 8 questions to be answered for this project. Postgres SQL was used to manipulate the database and aswer the following questions:


1. Find the employee number, last name, first name, gender, and salary of every employee. The information needed was available in two tables, employees and salaries, selected the appropriate columns and then joined those tables with an inner join on emp_no.
<br>

2. List all employees who were hired in 1986. Selected the first_name, last_name, and hire_date columns from the employees table and then used the WHERE clause to set the date of hire condition.


3. Looked into managers, listing the department number and name, and the managers’ name, employee number, and employment dates. The relevant information was stored in three separate tables this time, which required two inner joins. As before, selected the relevant columns and then joined the dept_manager table with the departments table on dept_no., and further with employees table on emp_no.


4. List the departments of every employee along with their full name and employee number. The information needed was stored in two tables, employees and departments. However, the tables did not share any primary/foreign keys. Therefore, used a third table (dept_emp) to join the other two together. First joined employees to dept_emp on the shared emp_no, and then dept_emp to departments on the shared dept_no. Through these joins, displayed the department name of each employee along with their name and employee number.


5. List all employees whose first name is "Hercules" and last names begin with "B." To do this, set two conditions joined by the AND clause, and made use of the SQL wildcard character % to search for last names beginning with “B”.


6. List information only for employees in the Sales department. Instead of repeating the fourth query, created a view of it, named emp_dept_info, and queried the view, with the condition on the department name being “Sales”.


7. Used the same query as in the sixth, and add the condition to look into "Development" department as well.


8. Count how many employees shared the same last name. To do this, selected the last_name column from the employees table and then also used the COUNT() function on the same column. Further grouped the data by last names and ordered the data by the count of last names in descending order to see the last names that were most 
