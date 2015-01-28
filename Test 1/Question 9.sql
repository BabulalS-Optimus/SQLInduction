--Run this to add the database i.e SqlTest
use SqlTest;

--Answer to the question : 9 i.e. [ Employee Names having lowest attendance records]

select
	Name
from
	EmployeeAttendance et
join Employee e1 on et.EmpID=e1.ID
group by et.EmpID,Name 
having (SUM(WorkingDays) - SUM(PresentDays)) = (
		select top 1 ( SUM(WorkingDays) - SUM(PresentDays) ) as MaxLeaves from 
		EmployeeAttendance group by EmpID order by MaxLeaves desc
	);