use SqlInduction;

select upper(isnull(lname,'<no-last-name>')) as LastName, fname as FirstName  from employee;