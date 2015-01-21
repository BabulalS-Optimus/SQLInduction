use SqlInduction;

SELECT (fname + ' ' + lname) as Name ,
CASE 
  WHEN salary>50000 THEN 'Yes'
  ELSE 'No'
END as IsSalaryMore
FROM employee;