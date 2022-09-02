/*
Retrieve a list with all employees from the ‘titles’ table who are engineers. 
Repeat the exercise, this time retrieving a list with all employees from the ‘titles’ table who are senior engineers.
*/
use mysql_project;
SELECT
	*
FROM titles
WHERE title = 'Engineer';

SELECT
	e.emp_no,
    t.title
FROM employees e 
	INNER JOIN titles t ON t.emp_no = e.emp_no
WHERE t.title LIKE '%Senior Engineer%';