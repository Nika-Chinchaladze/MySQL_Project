/*
create a variable, called 'v_emp_no', where you will store the output of the procedure p_emp_information
call the same procedure, inserting the values 'Aruna' and 'Journel' as a first and last name respectively
finally, select the obtained output
*/
use mysql_project;
set @v_emp_no = 0;
call p_emp_information('Aruna', 'Journel', @v_emp_no);
select @v_emp_no;