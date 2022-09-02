use mysql_project;
SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    NULL AS dept_no,
    NULL AS from_date
FROM
    employees_dup AS e 
UNION 
SELECT 
    NULL AS emp_no,
    NULL AS first_name,
    NULL AS last_name,
    d.dept_no,
    d.from_date
FROM
    dept_manager AS d;