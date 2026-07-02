Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 18
Server version: 8.0.46 MySQL Community Server - GPL

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| employeedb         |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> USE EmployeeDB;
Database changed
mysql> SHOW TABLES;
+----------------------+
| Tables_in_employeedb |
+----------------------+
| departments          |
| employees            |
+----------------------+
2 rows in set (0.01 sec)

mysql> SELECT * FROM Employees;
+------------+--------------+--------+------+--------------+----------+-------------+
| EmployeeID | EmployeeName | Gender | Age  | DepartmentID | Salary   | JoiningDate |
+------------+--------------+--------+------+--------------+----------+-------------+
|        101 | Rahul        | Male   |   25 |            2 | 45000.00 | 2025-01-15  |
|        102 | Priya        | Female |   24 |            1 | 30000.00 | 2025-02-10  |
|        103 | Kiran        | Male   |   26 |            3 | 40000.00 | 2025-03-20  |
|        104 | Anjali       | Female |   23 |            2 | 38000.00 | 2025-04-05  |
+------------+--------------+--------+------+--------------+----------+-------------+
4 rows in set (0.00 sec)

mysql> mysql>
    -> SHOW DATABASES;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'mysql>
SHOW DATABASES' at line 1
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| employeedb         |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> USE employeedb;
Database changed
mysql> SHOW TABLES;
+----------------------+
| Tables_in_employeedb |
+----------------------+
| departments          |
| employees            |
+----------------------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM Employees;
+------------+--------------+--------+------+--------------+----------+-------------+
| EmployeeID | EmployeeName | Gender | Age  | DepartmentID | Salary   | JoiningDate |
+------------+--------------+--------+------+--------------+----------+-------------+
|        101 | Rahul        | Male   |   25 |            2 | 45000.00 | 2025-01-15  |
|        102 | Priya        | Female |   24 |            1 | 30000.00 | 2025-02-10  |
|        103 | Kiran        | Male   |   26 |            3 | 40000.00 | 2025-03-20  |
|        104 | Anjali       | Female |   23 |            2 | 38000.00 | 2025-04-05  |
+------------+--------------+--------+------+--------------+----------+-------------+
4 rows in set (0.00 sec)

mysql> SHOW TABLES;
+----------------------+
| Tables_in_employeedb |
+----------------------+
| departments          |
| employees            |
+----------------------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM Employees;
+------------+--------------+--------+------+--------------+----------+-------------+
| EmployeeID | EmployeeName | Gender | Age  | DepartmentID | Salary   | JoiningDate |
+------------+--------------+--------+------+--------------+----------+-------------+
|        101 | Rahul        | Male   |   25 |            2 | 45000.00 | 2025-01-15  |
|        102 | Priya        | Female |   24 |            1 | 30000.00 | 2025-02-10  |
|        103 | Kiran        | Male   |   26 |            3 | 40000.00 | 2025-03-20  |
|        104 | Anjali       | Female |   23 |            2 | 38000.00 | 2025-04-05  |
+------------+--------------+--------+------+--------------+----------+-------------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM Employees;
+------------+--------------+--------+------+--------------+----------+-------------+
| EmployeeID | EmployeeName | Gender | Age  | DepartmentID | Salary   | JoiningDate |
+------------+--------------+--------+------+--------------+----------+-------------+
|        101 | Rahul        | Male   |   25 |            2 | 45000.00 | 2025-01-15  |
|        102 | Priya        | Female |   24 |            1 | 30000.00 | 2025-02-10  |
|        103 | Kiran        | Male   |   26 |            3 | 40000.00 | 2025-03-20  |
|        104 | Anjali       | Female |   23 |            2 | 38000.00 | 2025-04-05  |
+------------+--------------+--------+------+--------------+----------+-------------+
4 rows in set (0.00 sec)

mysql> SELECT Employees.EmployeeName,
    -> Departments.DepartmentName,
    -> Employees.Salary
    -> FROM Employees
    -> JOIN Departments
    -> ON Employees.DepartmentID = Departments.DepartmentID;
+--------------+----------------+----------+
| EmployeeName | DepartmentName | Salary   |
+--------------+----------------+----------+
| Rahul        | IT             | 45000.00 |
| Priya        | HR             | 30000.00 |
| Kiran        | Finance        | 40000.00 |
| Anjali       | IT             | 38000.00 |
+--------------+----------------+----------+
4 rows in set (0.00 sec)

mysql> SELECT AVG(Salary) AS AverageSalary
    -> FROM Employees;
+---------------+
| AverageSalary |
+---------------+
|  38250.000000 |
+---------------+
1 row in set (0.00 sec)

mysql> SELECT *
    -> FROM Employees
    -> ORDER BY Salary DESC
    -> LIMIT 1;
+------------+--------------+--------+------+--------------+----------+-------------+
| EmployeeID | EmployeeName | Gender | Age  | DepartmentID | Salary   | JoiningDate |
+------------+--------------+--------+------+--------------+----------+-------------+
|        101 | Rahul        | Male   |   25 |            2 | 45000.00 | 2025-01-15  |
+------------+--------------+--------+------+--------------+----------+-------------+
1 row in set (0.00 sec)

mysql> SELECT COUNT(*) AS TotalEmployees
    -> FROM Employees;
+----------------+
| TotalEmployees |
+----------------+
|              4 |
+----------------+
1 row in set (0.00 sec)

mysql> SELECT DepartmentID, COUNT(*)
    -> FROM Employees
    -> GROUP BY DepartmentID;
+--------------+----------+
| DepartmentID | COUNT(*) |
+--------------+----------+
|            1 |        1 |
|            2 |        2 |
|            3 |        1 |
+--------------+----------+
3 rows in set (0.00 sec)

