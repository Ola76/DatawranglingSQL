# Task 2 
# Compare the number of male managers to the number of female managers from different departments for each year, starting from 1990.
# What chart suits this question best? Area Chart with gender split

# Problem 2: Solution in SQL with the use of subquery
SELECT 
    d.dept_name,
    ee.gender,
    dm.emp_no,
    dm.from_date,
    dm.to_date,
    e.calendar_year,
    CASE
        WHEN
            YEAR(dm.to_date) >= e.calendar_year
                AND YEAR(dm.from_date) <= e.calendar_year
        THEN
            1
        ELSE 0
    END AS active
FROM
    (SELECT 
        YEAR(hire_date) AS calendar_year
    FROM
        employees
    GROUP BY calendar_year) e
        CROSS JOIN
    dept_manager dm
        JOIN
    departments d ON dm.dept_no = d.dept_no
        JOIN
    employees ee ON dm.emp_no = ee.emp_no
ORDER BY dm.emp_no , calendar_year;

# Data verfication 
SELECT * FROM (SELECT 
        YEAR(hire_date) AS calendar_year
    FROM
        employees
    GROUP BY calendar_year) e 
     CROSS JOIN
    dept_manager dm
        JOIN
    departments d ON dm.dept_no = d.dept_no
        JOIN
    employees ee ON dm.emp_no = ee.emp_no
ORDER BY dm.emp_no , calendar_year;

SELECT 
        YEAR(hire_date) AS calendar_year
    FROM
        employees
    GROUP BY calendar_year;



CREATE TABLE calendar_year (zone YEAR);

INSERT INTO calendar_year (SELECT 
        YEAR(hire_date) AS calendar_year
    FROM
        employees
    GROUP BY calendar_year);
    
SELECT * FROM employees.calendar_year;

DROP TABLE calendar_year;