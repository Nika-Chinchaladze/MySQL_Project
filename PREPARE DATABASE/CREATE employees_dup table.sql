-- create employees_dup table and fill it with first 20 records
use mysql_project;
CREATE TABLE employees_dup (
  emp_no int NOT NULL,
  birth_date date NOT NULL,
  first_name varchar(14) NOT NULL,
  last_name varchar(16) NOT NULL,
  gender enum('M','F') NOT NULL,
  hire_date date NOT NULL
  );

INSERT INTO employees_dup  
SELECT 
    *
FROM
    employees
LIMIT 20;

INSERT INTO employees_dup VALUES ('10001', '1953-09-02', 'Georgi', 'Facello', 'M', '1986-06-26');