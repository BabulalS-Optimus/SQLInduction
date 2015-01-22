use SqlInduction;

select lower(isnull(lname,'<No-Last-Name>')) as LastName, fname as FirstName  from employee;