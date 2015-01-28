--to use the database i.e. Optimus
use Optimus;

--answer to the test 2 Section B Part 2(a) i.e. [ Hours spend by each employee in their respective project ]
select 
	EmpName,
	ProjectName,
	SUM(HoursWorked) as HoursWorked
from
	Activity act
join Employee e
on e.EmpID=act.EmpID
join Project prj
on prj.ProjectID=act.ProjectID
group by act.EmpID,EmpName,act.ProjectID,ProjectName
order by act.EmpID