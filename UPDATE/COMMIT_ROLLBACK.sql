-- UPDATE records of departments_dup table use commit-rollback statements;
use mysql_project;
SELECT 
    *
FROM
    departments_dup;
    
COMMIT;

UPDATE departments_dup 
SET 
    dept_no = 'd011',
    dept_name = 'Quality Control';

ROLLBACK;

COMMIT;