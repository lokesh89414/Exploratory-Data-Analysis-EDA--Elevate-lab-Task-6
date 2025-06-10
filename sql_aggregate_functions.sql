-- 1. Count total number of employees
SELECT COUNT(*) AS TotalEmployees FROM Employee;

-- 2. Calculate total salary
SELECT SUM(Salary) AS TotalSalary FROM Employee;

-- 3. Find the average salary
SELECT AVG(Salary) AS AverageSalary FROM Employee;

-- 4. Find the highest salary
SELECT MAX(Salary) AS HighestSalary FROM Employee;

-- 5. Find the lowest salary
SELECT MIN(Salary) AS LowestSalary FROM Employee;

-- 6. Total salary by each employee
SELECT Name, SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY Name;

-- 7. Employees with salary greater than 600
SELECT Name, SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY Name
HAVING SUM(Salary) > 600;