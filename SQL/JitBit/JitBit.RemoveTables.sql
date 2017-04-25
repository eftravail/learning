USE [Learning];

/************************************************************************
Remove Database Tables
********************/
ALTER TABLE jitbit.Employee DROP CONSTRAINT FK_EmployeeBossID;
ALTER TABLE jitbit.Employee DROP CONSTRAINT FK_DepartmentDepartmentID;

DROP TABLE jitbit.Department;
DROP Table jitbit.Employee;