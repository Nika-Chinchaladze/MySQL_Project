-- alter departments_dup table and insert tw more record;

use mysql_project;
alter table departments_dup
add column dept_manager varchar(50) null;

ALTER TABLE departments_dup
modify column dept_name varchar(50) null;

insert into departments_dup(dept_no) values('d010'), ('d011');