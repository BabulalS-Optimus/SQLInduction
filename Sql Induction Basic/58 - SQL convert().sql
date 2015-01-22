use SqlInduction;


select ( fname + ' ' + lname) as Name, Salary, convert(varchar(10), getdate(), 105) as CurrentDate from employee ;

select ( fname + ' ' + lname) as Name, Salary, convert(varchar(17), getdate(), 107) as CurrentDate from employee ;

select ( fname + ' ' + lname) as Name, Salary, convert(varchar(10), getdate(), 104) as CurrentDate from employee ;

select ( fname + ' ' + lname) as Name, Salary, convert(varchar(13), getdate(), 100) as CurrentDate from employee ;

select ( fname + ' ' + lname) as Name, Salary, convert(varchar(10), getdate(), 102) as CurrentDate from employee ;

select ( fname + ' ' + lname) as Name, Salary, convert(varchar(10), getdate(), 113) as CurrentDate from employee ;





