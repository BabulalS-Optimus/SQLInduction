use SqlInduction;

select * from employee
except
select * from employee where datediff(month,date_of_joining,getdate())<6;

select * from employee
intersect
select * from employee where datediff(month,date_of_joining,getdate())>6;



