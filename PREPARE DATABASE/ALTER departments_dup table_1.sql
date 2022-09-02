use mysql_project;

ALTER TABLE departments_dup
DROP COLUMN dept_manager;

ALTER TABLE departments_dup
MODIFY COLUMN dept_no CHAR(4);
