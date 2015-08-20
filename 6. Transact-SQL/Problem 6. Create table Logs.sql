CREATE TABLE Logs
(
	LogId INT PRIMARY KEY IDENTITY,
	AccountId INT,
	OldSum MONEY,
	NewSum MONEY
)

CREATE TRIGGER tr_AccountSumChange ON Accounts FOR UPDATE
AS
BEGIN
	INSERT INTO Logs (AccountId, OldSum, NewSum)
	SELECT
		d.Id,
		d.Balance AS OldSum,
		i.Balance AS NewSum
	FROM Deleted d, Inserted i
END
		
		