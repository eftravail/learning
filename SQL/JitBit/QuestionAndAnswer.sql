USE [Learning];

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
left join jitbit.Employee e on d.DepartmentID = e.DepartmentID
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
