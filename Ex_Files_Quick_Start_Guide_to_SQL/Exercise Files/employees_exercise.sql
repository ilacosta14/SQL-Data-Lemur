-- Find the manager of each employee
-- Given a table Employees, write a SQL query to list EmployeeName along with their ManagerName. If an employee does not have a manager, the ManagerName should be NULL.

SELECT e1.name AS EmployeeName, 
e2.name AS ManagerName, 
FROM Employees e1 LEFT JOIN Employees e2 
ON e1.managerID = e2.empID;

-- We use two instances of the Employees table: e1 and e2. The ON clause specifies that the join should occur where the managerID of the Employees (e1) matches the EmpID of another Employees (e2), who is the manager. Left join is used to ensure that all employees from the e1 table (even those without a manager) are included in the result. If an employee does not have a manager (for example, if ManagerID is NULL), then the ManagerName will also be NULL.