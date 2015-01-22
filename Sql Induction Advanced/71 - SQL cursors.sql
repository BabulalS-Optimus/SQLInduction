use SqlInduction;


declare CREmployee_Salary cursor for 
	select id,gross,HR,DA,Sbasic from employee_salary

declare @tid numeric(18), @tgross numeric(18),@thr numeric(18), @tda numeric(18), @tbasic numeric(18)

open CREmployee_Salary 

fetch next from CREmployee_Salary into  @tid, @tgross,@thr, @tda , @tbasic 


while @@FETCH_STATUS = 0
begin
	set @tgross=(@thr+@tda+@tbasic)*12;
	update employee_salary set gross=@tgross where id=@tid;
	fetch next from CREmployee_Salary into  @tid, @tgross,@thr, @tda , @tbasic 

end
close CREmployee_Salary;
deallocate CREmployee_Salary;

select * from employee_salary;


