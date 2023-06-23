SELECT * FROM employees.employees;

SELECT emp_no, birth_date, first_name, last_name, gender, hire_date FROM employees;

DELIMITER $$

CREATE PROCEDURE Getemp()
BEGIN
	SELECT emp_no, birth_date, CONCAT(first_name, " ", last_name) AS fullname, gender, hire_date FROM employees ORDER BY emp_no;
END$$
DELIMITER ;


