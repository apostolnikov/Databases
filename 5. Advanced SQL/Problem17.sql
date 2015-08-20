CREATE TABLE Groups (
	GroupId int IDENTITY(1, 1),
	Name nvarchar(50) NOT NULL,
	CONSTRAINT PK_GroupId PRIMARY KEY(GroupId),
	CONSTRAINT UK_Name UNIQUE(Name)
)