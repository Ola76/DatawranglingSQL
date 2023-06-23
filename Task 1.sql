# Task 1
# Create a visualization that provides a breakdown between the male and female employees working in the company each year, starting from 1990.
# What chart suits this question best? Bar Chart with gender split

# To check for duplicate entry/record
SELECT emp_no, from_date, to_date FROM dept_emp;

SELECT DISTINCT emp_no, from_date, to_date FROM dept_emp;

# Problem 1: Solution in SQL
SELECT 
	YEAR(dm.from_date) as calendar_year,
	ee.gender,
    COUNT(ee.emp_no) as num_of_employees
FROM employees ee
JOIN dept_emp dm
ON ee.emp_no = dm.emp_no
GROUP BY calendar_year, ee.gender
HAVING calendar_year >= 1990;

# Total number of employees
SELECT 
    YEAR(dm.from_date) AS calendar_year,
    COUNT(ee.emp_no) AS num_of_employees
FROM
    employees ee
        JOIN
    dept_emp dm ON ee.emp_no = dm.emp_no
GROUP BY calendar_year
HAVING calendar_year >= 1990
ORDER BY calendar_year;