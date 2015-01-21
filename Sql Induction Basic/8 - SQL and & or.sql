
use SqlInduction;

select * from employee where salary>50000 and age<35;

select * from employee where salary>50000 and designation IN ('Manager','Tech Lead');
