USE master
IF EXISTS (SELECT * FROM SYS.DATABASES WHERE NAME = 'DaiLy')
BEGIN
	ALTER DATABASE DaiLy SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DaiLy;
END
GO

CREATE DATABASE DaiLy
GO

USE DaiLy
GO

create table USERS
(
	Username varchar(40),
	Password varchar(40)
	)

INSERT INTO USERS(Username, Password)
Values	('U1','123');
GO