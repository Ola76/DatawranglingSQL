# Task 4 
# Create an SQL stored procedure that will allow you to obtain the average male and female salary per department within a certain salary range. 
# Let this range be defined by two values the user can insert when calling the procedure. Finally, visualize the obtained result-set in Tableau as a double bar chart. 
# What chart suits this question best? Double bar chart

SELECT MIN(salary) FROM salaries;

SELECT MAX(salary) FROM salaries;

# BETWEEN $50,000 AND $80,000 AS range
DROP PROCEDURE IF EXISTS filter_salary;

# Problem 4: Solution in SQL stored procedure
 
DELIMITER $$
CREATE PROCEDURE filter_salary (IN p_min_salary FLOAT, IN p_max_salary FLOAT)
BEGIN
SELECT
	ee.gender, d.dept_name, ROUND(AVG(s.salary), 2) as avg_salary
FROM
	salaries s 
	JOIN
    employees ee ON s.emp_no = ee.emp_no
    JOIN
    dept_emp dm ON ee.emp_no = dm.emp_no
    JOIN
    departments d ON d.dept_no = dm.dept_no
	WHERE s.salary BETWEEN p_min_salary AND p_max_salary
GROUP BY d.dept_no, ee.gender;
END$$
DELIMITER ;

CALL filter_salary(50000, 90000);