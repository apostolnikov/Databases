
SELECT FirstName, LastName, Salary FROM Employees
	WHERE Salary > ((SELECT MIN(Salary) FROM Employees) / 10 + (SELECT MIN(Salary) FROM Employees)) ORDER BY Salary 