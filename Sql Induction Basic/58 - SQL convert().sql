-- to use the SQLInduction DataBase.
use SqlInduction;

--This query prints the complete Name and Salary of the Employee and the Date in FORMAT as DD-MM-YYYY
select ( fname + ' ' + lname) as Name, Salary, convert(varchar(12), getdate(), 105) as CurrentDate from employee ;

--This query prints the complete Name and Salary of the Employee and the Date in FORMAT as MMM DD, YYYY
select ( fname + ' ' + lname) as Name, Salary, convert(varchar(12), getdate(), 107) as CurrentDate from employee ;

--This query prints the complete Name and Salary of the Employee and the Date in FORMAT as DD.MM.YYYY
select ( fname + ' ' + lname) as Name, Salary, convert(varchar(12), getdate(), 104) as CurrentDate from employee ;

--This query prints the complete Name and Salary of the Employee and the Date in FORMAT as YYYY.MM.DD
select ( fname + ' ' + lname) as Name, Salary, convert(varchar(12), getdate(), 102) as CurrentDate from employee ;

--This query prints the complete Name and Salary of the Employee and the Date in FORMAT as DD MMM YYYY
select ( fname + ' ' + lname) as Name, Salary, convert(varchar(12), getdate(), 113) as CurrentDate from employee ;
