--Run this to add the database i.e SqlTest
use SqlTest;

--Answer to the question : 6 i.e. [ Departments with more than 3 employees ]
select
	DeptName,
	COUNT(*) as No_Of_Employees
from  
	Department d 
join Employee e on d.DeptID=e.DeptID
group by DeptName
having count(*) > 3;
