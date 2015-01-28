--Run this to add the database i.e SqlTest
use SqlTest;

--Answer to the question : 2 i.e. [ Department names with no. of employees, highest gross salary and total salary in each department ]
--NOTE : Salary = ( BASIC + HR + DA - TAX )
select 
	DeptName,
	COUNT(*) as No_Of_Employees,
	MAX([Basic]+HR+DA-TAX) as Highest_Gross_Salary,
	SUM([Basic]+HR+DA-TAX) as Total_Salary
from
	Department d 
	join 
		Employee e 
	on 
		d.DeptID=e.DeptID
	group by 
		DeptName;
