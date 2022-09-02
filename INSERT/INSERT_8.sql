use mysql_project;

-- delete records from table
DELETE FROM departments_dup 
WHERE
    dept_no IN ('d002', 'd010' , 'd011');

-- insert a record whose dept_name will be Public Relations
INSERT INTO departments_dup
(
	dept_name
) VALUES
(
	'Public Relations'
);

-- insert two new records with d010 and d011 dept_no
INSERT INTO departments_dup
(
	dept_no
) VALUES
('d010'),
('d011');