use SqlInduction;
select sum(salary) as SUM_OF_SALARIES from employee where deptid is null;