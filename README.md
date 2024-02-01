# sql-challenge
Challenge#9 HW

Background
I was hired as a new data engineer at Pewlett Hackard (a fictional company). My first major task is to do a research project about people whom the company employed during the 1980s and 1990s using the remaining six CSV files given.

For this project, I designed the tables to hold the data from the CSV files, imported the CSV files into a SQL database, and then answered 8  questions about the data. Thus the Challenge is divided into three parts: data modeling, data engineering, and data analysis.

Data Modeling: 
From the 6 csv files, I sketched an Entity Relationship Diagram of the 6 tables using a tool called QuickDBD (https://www.quickdatabasediagrams.com/). It was saved as image under "QuickDBD-Free Diagram.png". 

Data Engineering: 
First, I created a table schema outlining the data columns from all 6 CSV files. The schema specifies the data types (i.e. INT, VARCHAR, DATE), data types' character limits, primary keys (PK) for every unique column, foreign keys (FK), and composite keys which takes two primary keys to uniquely identify a row. One-to-one and one-to-many relationships were connected as needed. Once completed, schema was saved as Schema1.sql file. 
Second, I initiailized pgAdmin 4 on local desktop using PostgreSQL 14. New database was created for this project, schema1.sql file was opened inside Query Tool, and each csv file was imported sequentially into its corresponding SQL table.

Data Analysis: 
1. List the employee number, last name, first name, sex, and salary of each employee.
2. List the first name, last name, and hire date for the employees who were hired in 1986.
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6. List each employee in the Sales department, including their employee number, last name, and first name.
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

During analysis, I setup and executed individual queries to answer each question, sometimes creating JOINs and other times SUBQUERIES to obtain the necessary data outputs. 

This assignment allowed me to become comfortable using SQL as a non-programmer. I attained the results with the help of my Tutor, AskBCS, revisiting class exercises and Google searches. 
