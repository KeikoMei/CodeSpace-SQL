-- 1.     Select all columns from the 'employee' table:
SELECT * FROM employee;

-- 2.     Select unique department names from the 'department' table:
SELECT DISTINCT department_name FROM department;

-- 3.     Select employee names and salaries from the 'employee' table, ordered by salary in descending order:
SELECT employee_name, salary FROM Employee ORDER BY salary DESC;

-- 4.     Select products with a price between £100 and £500 from the 'product' table:
SELECT * FROM Product WHERE price BETWEEN 100 AND 500;

-- 5.     Select orders made by employees in the 'IT' department, joining 'purchase' and 'employee' tables:
SELECT order_id, order_date, employee_name
FROM purchase
JOIN employee ON employee.employee_id = purchase.employee_id
WHERE employee.department_id = (SELECT department_id FROM Department WHERE department_name = "IT");

SELECT order_id, order_date, employee_name
FROM purchase
JOIN employee ON employee.employee_id = purchase.employee_id
WHERE employee.department_id = (SELECT department_id FROM Department WHERE department_name = "Sales");

-- 6.     Select products with names containing 'Chair' using a wildcard:
SELECT product_id, product_name, price, stock_quantity FROM product WHERE product_name LIKE "%Chair%";

-- 7.     Select orders made by employees with IDs 1, 3, and 5:
SELECT order_id, employee.employee_id, product_id, order_date, quantity
FROM employee
JOIN purchase on employee.employee_id = purchase.employee_id
WHERE purchase.employee_id IN (1, 3, 5);

-- 8.     Select the average salary of all employees:
SELECT AVG (salary) AS average_salary from employee;

-- 9.     Select employees hired after '2022-03-01' with a salary greater than £60000:
SELECT employee_id, employee_name, department_id, hire_date, salary
FROM employee
WHERE hire_date > 2022-03-01 AND salary > 60000;

-- 10. Select departments with more than 1 employees, counting the number of employees in each department:
SELECT department.department_id, department_name, COUNT (Employee.department_id) AS num_employees
FROM department
JOIN employee ON department.department_id = employee.department_id
GROUP BY department.department_id, department_name
HAVING num_employees > 1;
