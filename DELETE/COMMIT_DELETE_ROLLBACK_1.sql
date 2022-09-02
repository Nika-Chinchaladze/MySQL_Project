-- DELETE all information from departments_dup table and then recover it
use mysql_project;
COMMIT;
SELECT 
    *
FROM
    departments_dup;

DELETE FROM departments_dup;

ROLLBACK;
COMMIT;