use SqlInduction;

select lname as LastName, len(lname) as LengthOfLastName, fname as FirstName, len(fname) as LengthOfFirstName  from employee;