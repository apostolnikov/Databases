INSERT INTO Groups(Name)
VALUES ('Java')
VALUES ('C#')
VALUES ('JavaScript')
GO

INSERT INTO Users(UserName, FullName, Password, GroupID)
VALUES('batkov', 'Todor Batkov', '123456', 1)
VALUES('boiko', 'Boiko Borisov', '456123', 2)
VALUES('NoMoney', 'Cvetan Vasilev', '$$$no', 3)
GO

