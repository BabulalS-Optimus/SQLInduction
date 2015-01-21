
use SqlInduction;

select d.name,count(e.id) as NumberOfEmployees from employee e right join  department d   on e.deptid = d.id group by d.name;

