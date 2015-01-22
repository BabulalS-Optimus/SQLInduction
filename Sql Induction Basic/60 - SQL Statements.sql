use SqlInduction;

SELECT (fname + ' ' + isnull(lname,'')) as Name , salary ,
CASE 
  WHEN salary>50000 THEN 'Yes'
  ELSE 'No'
END as IsSalaryMore
FROM employee;