--Run this to add the database i.e SqlTest
use SqlTest;

--Answer to the question : 3 i.e. [ Name of employees with highest gross salary in each department ]
--NOTE : Gross Salary = ( BASIC + HR + DA - TAX )

select
	DeptName,
	Name as Employee_Name,
	Salary as Max_Gross_Salary
from
(
	select 
		DeptID,
		MAX([Basic]+HR+DA-TAX) as Salary
	from 
		Employee 
	group by DeptID
)innertable
join Employee e
on e.DeptID=innertable.DeptID 
join Department d
on d.DeptID=e.DeptID
where (e.[Basic]+e.HR+e.DA-e.TAX)=innertable.Salary
