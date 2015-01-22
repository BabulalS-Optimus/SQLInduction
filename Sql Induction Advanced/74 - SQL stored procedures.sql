
use SqlInduction;

create procedure dbo.FetchEmployee 
	@tid numeric(18)
as
begin
	select e.id, (e.fname+' '+e.lname) as Name, e.Salary, e.Age, dg.name as Designation, dp.name as Department from employee e left join  designation dg on dg.id=e.designation
	left join  department dp on dp.id=e.deptid where e.id=@tid;
	
end

execute dbo.FetchEmployee @tid=1;
execute dbo.FetchEmployee @tid=4;
execute dbo.FetchEmployee @tid=7;

drop procedure dbo.FetchEmployee;
