/* SELECT the first and last name, the hire_date and job title of all employees
whose first name is Margareta and have the last name Markovitch */
use mysql_project;
SELECT 
    e.emp_no, 
    e.first_name, 
    e.last_name, 
    t.title
FROM titles AS t
	RIGHT JOIN employees AS e ON t.emp_no = e.emp_no
WHERE
    e.first_name = 'Margareta'
	AND e.last_name = 'Markovitch';