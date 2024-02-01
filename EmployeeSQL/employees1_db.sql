SELECT * FROM employees; 
SELECT * FROM salaries; 
SELECT * FROM titles; 
SELECT * FROM departments; 
SELECT * FROM dept_emp; 
SELECT * FROM dept_manager;

--1. List the employee number, last name, first name, sex, and salary of each employee.

SELECT employees.emp_no, 
employees.last_name, 
employees.first_name, 
employees.sex, 
salaries.salary
FROM employees 
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no;

--2. List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT first_name,last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986'
ORDER BY hire_date; 

--3. List the manager of each department along with their: 
--department number, department name, employee number, last name, and first name.

employees.emp_no
employees.last_name
employees.first_name
dept_manager.emp_no
dept_manager.dept_no
departments.dept_no
departments.dept_name	

--JOIN together 
SELECT departments.dept_no, 
departments.dept_name,	
dept_manager.emp_no, 
employees.last_name,
employees.first_name, 
titles.title
FROM departments 
INNER JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no
INNER JOIN employees
ON employees.emp_no = dept_manager.emp_no
INNER JOIN titles
ON titles.title_id = employees.emp_title_id;

--4.List the department number for each employee along with:
--that employee’s employee number, last name, first name, and department name.

departments.dept_no
departments.dept_name
dept_emp.dept_no
employees.emp_no
employees.last_name
employees.first_name

SELECT employees.emp_no, 
employees.last_name,
employees.first_name,
dept_emp.dept_no, 
departments.dept_name
FROM employees 
INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments
ON departments.dept_no = dept_emp.dept_no;

--5. List first name, last name, and sex of each employee whose:
--first name is Hercules and whose last name begins with the letter B.

employees.first_name
employees.last_name
employees.sex

SELECT first_name,last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY last_name; 

--6. List each employee in the Sales department, including their:
--employee number, last name, and first name.

SELECT emp_no, last_name, first_name
FROM employees
WHERE emp_no IN
(
  SELECT emp_no
  FROM dept_emp
  WHERE dept_no IN
  (
    SELECT dept_no
    FROM departments
    WHERE dept_name = 'Sales'
  )
);

--7. List each employee in the Sales and Development departments, including their
--employee number, last name, first name, and department name.

SELECT employees.emp_no, 
employees.last_name,
employees.first_name,
departments.dept_name
FROM employees 
INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments
ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name IN ('Sales', 'Development'); 

--8. List the frequency counts, in descending order, of:
--all the employee last names (that is, how many employees share each last name).

SELECT last_name, COUNT(last_name) AS "Frequency"
FROM employees
GROUP BY last_name
ORDER BY "Frequency" DESC; 


