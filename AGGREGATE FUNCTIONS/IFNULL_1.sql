/* if dept_no and dept_name columns hass null values then 'N/A' and 'Not Provided' should be applied,
there should be third column with will show existing values from dept_no and dept_name columns */

SELECT 
    IFNULL(dept_no, 'N/A') AS dept_no,
    IFNULL(dept_name, 'Not Provided') AS dept_name,
    COALESCE(dept_no, dept_name) AS dept_detail
FROM
    departments_dup;

