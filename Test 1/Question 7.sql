--Run this to add the database i.e SqlTest
use SqlTest;

--Answer to the question : 7 i.e. [ Departments with Name of their department head]

select
	DeptName,
	Name as Dept_Head_Name
from  
	Department d 
	join 
		Employee e 
	on 
		d.DeptHeadID=e.ID

