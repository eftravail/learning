/*************************************************************************
SQL Interview Questions from JitBit
	Original Article here:
		https://www.jitbit.com/news/181-jitbits-sql-interview-questions/


    List employees (names) who have a bigger salary than their boss
    List employees who have the biggest salary in their departments
    List departments that have less than 3 people in it
    List all departments along with the number of people there (tricky - people often do an "inner join" leaving out empty departments)
    List employees that don't have a boss in the same department
    List all departments along with the total salary there

*************************************************************************/


USE [Learning];

/************************************************************************
Create Database Schema
********************/
/*
CREATE SCHEMA [jitbit];
*/

/************************************************************************
Create Database Tables
********************/
/*
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
*/
/************************************************************************
Remove Database Tables
********************/
/*
ALTER TABLE jitbit.Employee DROP CONSTRAINT FK_EmployeeBossID;
ALTER TABLE jitbit.Employee DROP CONSTRAINT FK_DepartmentDepartmentID;
DROP TABLE jitbit.Department;
DROP Table jitbit.Employee;
*/

/************************************************************************
Populate Database Tables
********************/
/*
DECLARE @deptID int;
DECLARE @deptName nvarchar(150);

SET @deptName = 'Accounting';
INSERT INTO [jitbit].[Department] ([Name]) VALUES (@deptName);
SELECT @deptID = [DepartmentID] from jitbit.Department where [Name] = @deptName;

	INSERT INTO [jitbit].[Employee] (DepartmentID, BossID, Name, Salary) VALUES (@deptID, null, 'Mary Clark', 150000);
	INSERT INTO [jitbit].[Employee] (DepartmentID, BossID, Name, Salary) VALUES (@deptID, null, 'Mary Clark', 150000);
	INSERT INTO [jitbit].[Employee] (DepartmentID, BossID, Name, Salary) VALUES (@deptID, null, 'Mary Clark', 150000);
	INSERT INTO [jitbit].[Employee] (DepartmentID, BossID, Name, Salary) VALUES (@deptID, null, 'Mary Clark', 150000);

SET @deptName = 'Human Resources';
INSERT INTO [jitbit].[Department] ([Name]) VALUES (@deptName);
SELECT @deptID = [DepartmentID] from jitbit.Department where [Name] = @deptName;

	INSERT INTO [jitbit].[Employee] (DepartmentID, BossID, Name, Salary) VALUES (@deptID, null, 'Mary Clark', 150000);
	INSERT INTO [jitbit].[Employee] (DepartmentID, BossID, Name, Salary) VALUES (@deptID, null, 'Mary Clark', 150000);
	INSERT INTO [jitbit].[Employee] (DepartmentID, BossID, Name, Salary) VALUES (@deptID, null, 'Mary Clark', 150000);

SET @deptName = 'Sales';
INSERT INTO [jitbit].[Department] ([Name]) VALUES (@deptName);
SELECT @deptID = [DepartmentID] from jitbit.Department where [Name] = @deptName;

	INSERT INTO [jitbit].[Employee] (DepartmentID, BossID, Name, Salary) VALUES (@deptID, null, 'Mary Clark', 150000);
	INSERT INTO [jitbit].[Employee] (DepartmentID, BossID, Name, Salary) VALUES (@deptID, null, 'Mary Clark', 150000);

SET @deptName = 'Marketing';
INSERT INTO [jitbit].[Department] ([Name]) VALUES (@deptName);
SELECT @deptID = [DepartmentID] from jitbit.Department where [Name] = @deptName;

	INSERT INTO [jitbit].[Employee] (DepartmentID, BossID, Name, Salary) VALUES (@deptID, null, 'Mary Clark', 150000);
	INSERT INTO [jitbit].[Employee] (DepartmentID, BossID, Name, Salary) VALUES (@deptID, null, 'Mary Clark', 150000);
	INSERT INTO [jitbit].[Employee] (DepartmentID, BossID, Name, Salary) VALUES (@deptID, null, 'Mary Clark', 150000);
	INSERT INTO [jitbit].[Employee] (DepartmentID, BossID, Name, Salary) VALUES (@deptID, null, 'Mary Clark', 150000);

SET @deptName = 'IT Software Development';
INSERT INTO [jitbit].[Department] ([Name]) VALUES (@deptName);
SELECT @deptID = [DepartmentID] from jitbit.Department where [Name] = @deptName;

	INSERT INTO [jitbit].[Employee] (DepartmentID, BossID, Name, Salary) VALUES (@deptID, null, 'Mary Clark', 150000);
	INSERT INTO [jitbit].[Employee] (DepartmentID, BossID, Name, Salary) VALUES (@deptID, null, 'Mary Clark', 150000);
	INSERT INTO [jitbit].[Employee] (DepartmentID, BossID, Name, Salary) VALUES (@deptID, null, 'Mary Clark', 150000);
	INSERT INTO [jitbit].[Employee] (DepartmentID, BossID, Name, Salary) VALUES (@deptID, null, 'Mary Clark', 150000);
	INSERT INTO [jitbit].[Employee] (DepartmentID, BossID, Name, Salary) VALUES (@deptID, null, 'Mary Clark', 150000);
	INSERT INTO [jitbit].[Employee] (DepartmentID, BossID, Name, Salary) VALUES (@deptID, null, 'Mary Clark', 150000);

SET @deptName = 'IT Networking';
INSERT INTO [jitbit].[Department] ([Name]) VALUES (@deptName);
SELECT @deptID = [DepartmentID] from jitbit.Department where [Name] = @deptName;

	INSERT INTO [jitbit].[Employee] (DepartmentID, BossID, Name, Salary) VALUES (@deptID, null, 'Mary Clark', 150000);
	INSERT INTO [jitbit].[Employee] (DepartmentID, BossID, Name, Salary) VALUES (@deptID, null, 'Mary Clark', 150000);
	INSERT INTO [jitbit].[Employee] (DepartmentID, BossID, Name, Salary) VALUES (@deptID, null, 'Mary Clark', 150000);

SET @deptName = 'Maintenance';
INSERT INTO [jitbit].[Department] ([Name]) VALUES (@deptName);
SELECT @deptID = [DepartmentID] from jitbit.Department where [Name] = @deptName;

	INSERT INTO [jitbit].[Employee] (DepartmentID, BossID, Name, Salary) VALUES (@deptID, null, 'Mary Clark', 150000);
	INSERT INTO [jitbit].[Employee] (DepartmentID, BossID, Name, Salary) VALUES (@deptID, null, 'Mary Clark', 150000);
*/
/************************************************************************/

/*** 
Question 1
    List employees (names) who have a bigger salary than their boss
***/

/*** 
Question 2
    List employees who have the biggest salary in their departments
***/
select
	  d.[Name] 'DepartmentName'
	, e.[Name] 'EmployeeName'
	, e.Salary
from jitbit.Employee e
inner join jitbit.Department d on e.DepartmentID = d.DepartmentID
group by e.DepartmentID, e.Salary, d.[Name], e.Name
having e.Salary = Max(e.Salary)


/*** 
Question 3
    List departments that have less than 3 people in it
***/
select
	  e.DepartmentID
	, d.[Name]
from jitbit.Employee e
inner join jitbit.Department d on e.DepartmentID = d.DepartmentID
group by e.DepartmentID, d.[Name]
having count(e.EmployeeID) < 3

/*** 
Question 4
    List all departments along with the number of people there (tricky - people often do an "inner join" leaving out empty departments)
***/
select
	  d.[Name] 'DepartmentName'
	, Count(e.EmployeeID) 'EmployeeCount'
from jitbit.Department d 
inner join jitbit.Employee e on d.DepartmentID = e.DepartmentID
group by d.DepartmentID, d.[Name]
order by d.[Name]

/*** 
Question 5
    List employees that don't have a boss in the same department
***/

/*** 
Question 6
    List all departments along with the total salary there
***/
select
	d.[Name] 'DepartmentName'
	, Sum(e.Salary) 'TotalSalary'
from jitbit.Department d
left join jitbit.Employee e on d.DepartmentID = e.DepartmentID
group by d.DepartmentID, d.[Name]
order by d.[Name]