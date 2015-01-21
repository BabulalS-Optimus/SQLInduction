use SqlInduction;

 SELECT d.name as NameOfDepartment, COUNT(e.fname) AS NumberOfEmployees FROM department d
LEFT JOIN employee e
ON e.deptid=d.id
GROUP BY d.name;
