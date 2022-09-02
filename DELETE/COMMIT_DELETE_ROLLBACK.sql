-- delete record from employees table and then return it again

use mysql_project;

COMMIT;

SELECT 
    *
FROM
    titles
WHERE
    emp_no = 999903;

DELETE FROM employees 
WHERE
    emp_no = 999903;

ROLLBACK;
COMMIT;