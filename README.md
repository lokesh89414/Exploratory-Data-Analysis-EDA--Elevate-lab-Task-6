# Exploratory-Data-Analysis-EDA--Elevate-lab-Task-6

# SQL Aggregate Functions


SQL Aggregate Functions are used to perform calculations on a set of rows and return a single value. These functions are essential when summarizing, analyzing, or grouping large datasets. Whether you're working with sales data, employee records, or inventories, aggregate functions help in deriving meaningful insights.

---

## 📌 What Are SQL Aggregate Functions?

SQL Aggregate Functions perform calculations on multiple rows and return a single summarized result. They are commonly used with the `GROUP BY` clause to group data and apply functions like summing, averaging, or counting.

---

## ✨ Key Features

- **Operate on groups of rows**: Return a single value per group.
- **Ignore NULLs**: Most functions skip NULLs (except `COUNT(*)`).
- **Used with GROUP BY**: Aggregate data by groups.
- **Combine with SQL clauses**: Work with `HAVING`, `ORDER BY`, etc.

---

## 🛠 Commonly Used Aggregate Functions

### 1. `COUNT()`
Returns the number of rows matching a condition.
sql
-- Count all rows
SELECT COUNT(*) AS TotalRecords FROM Employee;

-- Count non-NULL values
SELECT COUNT(Salary) AS NonNullSalaries FROM Employee;

-- Count distinct non-NULL values
SELECT COUNT(DISTINCT Salary) AS UniqueSalaries FROM Employee;
`

### 2. `SUM()`

Returns the total sum of a numeric column.
sql
-- Total salary
SELECT SUM(Salary) AS TotalSalary FROM Employee;

-- Sum of unique salaries
SELECT SUM(DISTINCT Salary) AS DistinctSalarySum FROM Employee;
### 3. `AVG()`

Returns the average value of a numeric column.
sql
-- Average salary
SELECT AVG(Salary) AS AverageSalary FROM Employee;

-- Average of distinct salaries
SELECT AVG(DISTINCT Salary) AS DistinctAvgSalary FROM Employee;
### 4. `MIN()` and `MAX()`

Return the smallest and largest values in a column.
sql
-- Highest salary
SELECT MAX(Salary) AS HighestSalary FROM Employee;

-- Lowest salary
SELECT MIN(Salary) AS LowestSalary FROM Employee;
---

## 📊 Demo Table: Employee

| Id | Name | Salary |
| -- | ---- | ------ |
| 1  | A    | 802    |
| 2  | B    | 403    |
| 3  | C    | 604    |
| 4  | D    | 705    |
| 5  | E    | 606    |
| 6  | F    | NULL   |

### Examples:

#### 1. Total Number of Employees
sql
SELECT COUNT(*) AS TotalEmployees FROM Employee;
-- Output: 6
#### 2. Total Salary
sql
SELECT SUM(Salary) AS TotalSalary FROM Employee;
-- Output: 3120
#### 3. Average Salary
sql
SELECT AVG(Salary) AS AverageSalary FROM Employee;
-- Output: 624
#### 4. Highest and Lowest Salary
sql
SELECT MAX(Salary) AS HighestSalary FROM Employee;
SELECT MIN(Salary) AS LowestSalary FROM Employee;
-- Output: Highest = 802, Lowest = 403
---

## 🧮 Using GROUP BY with Aggregate Functions
sql
SELECT Name, SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY Name;
| Name | TotalSalary |
| ---- | ----------- |
| A    | 802         |
| B    | 403         |
| C    | 604         |
| D    | 705         |
| E    | 606         |
| F    | NULL        |

---

## 🔎 Using HAVING with Aggregate Functions
sql
SELECT Name, SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY Name
HAVING SUM(Salary) > 600;
| Name | TotalSalary |
| ---- | ----------- |
| A    | 802         |
| C    | 604         |
| D    | 705         |
| E    | 606         |

---

## ✅ Key Takeaways

* Operate on groups of values, returning a single result.
* Ignore NULLs (except `COUNT(*)`).
* Use with `GROUP BY`, `HAVING`, etc.
* Most common: `MIN()`, `MAX()`, `COUNT()`, `AVG()`, `SUM()`.

---

## 📌 Conclusion

SQL Aggregate Functions are powerful tools for summarizing and analyzing data. Mastering these functions helps you quickly compute totals, averages, and identify trends within large datasets. Combining them with clauses like `GROUP BY` and `HAVING` makes your SQL queries even more efficient and insightful.

---
