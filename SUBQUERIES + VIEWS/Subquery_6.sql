-- from the emp_manager table, extract the record data only of those
-- employees who are managers as well

SELECT 
    e1.*
FROM
    emp_manager AS e1
        INNER JOIN
    emp_manager AS e2 ON e1.emp_no = e2.manager
WHERE
    e2.emp_no IN (SELECT DISTINCT
            manager
        FROM
            emp_manager);
	