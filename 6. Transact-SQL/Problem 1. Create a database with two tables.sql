ALTER PROCEDURE usp_SelectFullName
AS
	SELECT FirstName + ' ' + LastName  AS [Full Name] FROM Persons

exec usp_SelectFullName