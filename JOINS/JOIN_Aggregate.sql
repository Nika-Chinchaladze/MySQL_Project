-- How many male and female managers do we have in the employees database
use mysql_project;
SELECT 
    e.gender, 
    COUNT(d.emp_no) AS Quantity
FROM dept_manager AS d
	INNER JOIN employees AS e ON e.emp_no = d.emp_no
GROUP BY e.gender
ORDER BY Quantity ASC;