/* insert information about the individual with employees number
999903 into the dept_emp table. he/she is working for department
number 5 and has started work on octomber 1-st, 1997, his contract 
is for an indefinite period of time */

use mysql_project;
INSERT INTO dept_emp
(
	emp_no,
    dept_no,
    from_date,
    to_date
)
VALUES
(
	999903,
    'd005',
    '1997-10-01',
    '9999-01-01'
);