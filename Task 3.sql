# Task 3 
# Compare the average salary of female versus male employees in the entire company until year 2002, and add a filter allowing you to see that per each department. 
# What chart suits this question best? Line Chart (Trend analysis)

# Problem 3: Solution in SQL 
SELECT 
    ee.gender,
    d.dept_name,
    ROUND(AVG(s.salary), 2) AS salary,
    YEAR(s.from_date) AS calendar_year
FROM
    salaries s
        JOIN
    employees ee ON s.emp_no = ee.emp_no
        JOIN
    dept_emp dm ON dm.emp_no = ee.emp_no
        JOIN
    departments d ON d.dept_no = dm.dept_no
GROUP BY d.dept_no, ee.gender, calendar_year
HAVING calendar_year <= 2002
ORDER BY d.dept_no;