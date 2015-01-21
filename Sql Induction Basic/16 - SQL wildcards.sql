
use SqlInduction;

select * from employee;

select * from employee where fname like 'A%';
select * from employee where fname like '%A';
select * from employee where fname like '%k%';
select * from employee where fname like '_a%';
select * from employee where fname like '%n%k%';


