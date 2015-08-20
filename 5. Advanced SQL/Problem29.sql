USE SoftUni
GO

CREATE TABLE WorkHours (
  ID int IDENTITY(1, 1),
  EmployeeID int NOT NULL,
  DateOfReport datetime NOT NULL DEFAULT(GETDATE()),
  Task text NOT NULL,
  [Hours] time NOT NULL,
  PRIMARY KEY(ID),
  FOREIGN KEY(EmployeeID) REFERENCES Employees(EmployeeID)
)
GO