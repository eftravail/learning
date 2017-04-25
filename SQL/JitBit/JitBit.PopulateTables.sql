USE [Learning];

/************************************************************************
Populate Database Tables
********************/
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