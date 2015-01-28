--to use the database i.e. Optimus
use Optimus;

--answer to the test 2 Section B Part 2(b) i.e. [ Hours spend in each project in their respective department ]
select 
	ProjectName,
	DeptName,
	SUM(HoursWorked) as HoursWorked
from
	Activity act
join Employee e
on e.EmpID=act.EmpID
join Project prj
on prj.ProjectID=act.ProjectID
join Department d
on d.DeptID=e.DeptID
group by act.ProjectID,ProjectName,DeptName
order by act.ProjectID