USE [Learning];

/************************************************************************
Create Database Tables
********************/

CREATE TABLE [jitbit].[Department]
(
	[DepartmentID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(150) NOT NULL
)


CREATE TABLE [jitbit].[Employee]
(
	[EmployeeID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [DepartmentID] INT NOT NULL, 
    [BossID] INT NULL, 
    [Name] NVARCHAR(150) NOT NULL, 
    [Salary] MONEY NULL
)

ALTER TABLE jitbit.Employee ADD CONSTRAINT FK_EmployeeBossID FOREIGN KEY (BossID) REFERENCES jitbit.Employee(EmployeeID);
ALTER TABLE jitbit.Employee ADD CONSTRAINT FK_DepartmentDepartmentID FOREIGN KEY (DepartmentID) REFERENCES jitbit.Department(DepartmentID);