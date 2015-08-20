ALTER PROCEDURE udp_WithdrawMoney(@account int, @moneyToBeWithdrawn money)
AS
BEGIN
	declare @currentAccountMoney money
	BEGIN TRAN
		-- Retrieve current money amount for the account
		SELECT @currentAccountMoney =
		a.Balance FROM Persons p
		INNER JOIN Accounts a ON p.Id = a.PersonId
		WHERE a.Id = @account
		IF @moneyToBeWithdrawn < @currentAccountMoney
			UPDATE Accounts 
			SET Balance = Balance - @moneyToBeWithdrawn
			WHERE Id = @account
		ELSE
			Raiserror('Money not available for withdraw', 16, 1)
	COMMIT
END

-- Example usage
exec udp_WithdrawMoney 3, 50


CREATE PROCEDURE udp_DepositMoney(@account int, @moneyToBeDeposited money)
AS
BEGIN
	BEGIN TRAN
			UPDATE Accounts 
			SET Balance = Balance + @moneyToBeDeposited
			WHERE Id = @account
	COMMIT
END

-- Example usage
exec udp_DepositMoney 3, 50
