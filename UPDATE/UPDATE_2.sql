-- change the Business Analysis department name to Data Analysis

use mysql_project;
UPDATE departments 
SET 
    dept_name = 'Data Analysis'
WHERE
    dept_name = 'Business Analysis';