use SqlInduction;

create table employee_salary(
id numeric PRIMARY KEY IDENTITY(1,1),
name varchar(50),
Sbasic numeric(18),
HR numeric(18),
DA numeric(18),
gross numeric(18)
);


drop trigger dbo.InsertInEmployee_salary;

create trigger InsertInEmployee_salary on employee_salary
after insert 

as 
	declare @tid numeric(18), @tgross numeric(18),@thr numeric(18), @tda numeric(18), @tbasic numeric(18)

	select @tid=i.id from inserted i;
	select @thr=i.HR from inserted i;
	select @tda=i.DA from inserted i;
	select @tbasic=i.Sbasic from inserted i;
	
	set @tgross=(@thr+@tda+@tbasic)*12;

begin
	update employee_salary set gross=@tgross where id=@tid;	
end

select * from employee_salary;

insert into employee_salary values('Babu Lal Swami',25000,12000,10000,0);
insert into employee_salary values('Manoj Kumar',30000,10000,1000,NULL);

select * from employee_salary;


