ALTER PROCEDURE usp_FindPersonsByBalance (@balance money)
AS
	SELECT p.FirstName, p.LastName, a.Balance 
	FROM Persons p INNER JOIN Accounts a ON p.Id = a.PersonId
	WHERE a.Balance > @balance

exec usp_FindPersonsByBalance 300.50