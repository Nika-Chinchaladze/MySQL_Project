-- Find the average salaries of men and women in the company
use mysql_project;
SELECT 
    e.gender, 
    ROUND(AVG(s.salary), 2) AS average_salary
FROM salaries AS s
	INNER JOIN employees AS e ON e.emp_no = s.emp_no
GROUP BY e.gender
ORDER BY average_salary ASC;