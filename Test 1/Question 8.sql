--Run this to add the database i.e SqlTest
use SqlTest;

--Answer to the question : 8 i.e. [ Employee Names having 100% attendance records]

select
	Name
from
		EmployeeAttendance et
join Employee e
on et.EmpID=e.ID
group by EmpID,Name
having SUM(WorkingDays) -SUM(PresentDays) =0;
	

