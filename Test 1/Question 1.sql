--Run this to add the database i.e SqlTest
use SqlTest;

--Answer to the question : 1 i.e. [ gender wise number of employees in each department ]
select 
	DeptName,
	Gender,
	COUNT(*) as No_Of_Employees
from  
	Department d 
	join 
		Employee e 
	on 
		d.DeptID=e.DeptID
group by 
	DeptName,e.Gender;
