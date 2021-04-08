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


1. List the following details of each employee: employee number, last name, first name, sex, and salary.
<br>![image](https://user-images.githubusercontent.com/69221324/114056458-b1f6f900-985f-11eb-9f08-7f0de9930f1d.png)


2. List first name, last name, and hire date for employees who were hired in 1986.
<br>![image](https://user-images.githubusercontent.com/69221324/114056489-bd4a2480-985f-11eb-975f-6cdc4023ed83.png)


3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
<br>![image](https://user-images.githubusercontent.com/69221324/114056565-cd620400-985f-11eb-8843-88b2c6bdda00.png)


4. List the department of each employee with the following information: employee number, last name, first name, and department name.
<br>![image](https://user-images.githubusercontent.com/69221324/114056619-da7ef300-985f-11eb-800a-d5d0acfbe15e.png)


5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
<br>![image](https://user-images.githubusercontent.com/69221324/114057030-3ba6c680-9860-11eb-9925-43cd0eaf4dd1.png)


6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
<br>![image](https://user-images.githubusercontent.com/69221324/114057096-47928880-9860-11eb-8648-3c1d97c40cc7.png)


7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
<br>![image](https://user-images.githubusercontent.com/69221324/114057133-50835a00-9860-11eb-9138-53ceeff98772.png)


8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
<br>![image](https://user-images.githubusercontent.com/69221324/114057182-5a0cc200-9860-11eb-9691-5189cdeb409e.png)
