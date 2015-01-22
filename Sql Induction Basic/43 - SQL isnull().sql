use SqlInduction;

select fname, isnull(lname,'no name') as LastName,age, salary from employee;