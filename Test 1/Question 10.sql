--Run this to add the database i.e SqlTest
use SqlTest;

--Answer to the question : 10 i.e. [ Employee Names having more than 3 leaves ]

select
	Name
from
	EmployeeAttendance et
join Employee e1 on et.EmpID=e1.ID
group by et.EmpID,Name 
having SUM(WorkingDays) - SUM(PresentDays) > 3;



