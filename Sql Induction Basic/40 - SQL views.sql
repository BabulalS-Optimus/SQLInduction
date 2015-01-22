use SqlInduction;

alter table employee add date_of_joining date;


update employee set date_of_joining='10/12/2009' where designation=2;
update employee set date_of_joining='10/02/2010' where designation=1;
update employee set date_of_joining='12/06/2011' where designation=3;
update employee set date_of_joining='12/09/2012' where designation=4;
update employee set date_of_joining='02/08/2013' where designation=5;
update employee set date_of_joining='12/12/2014' where designation=6;
update employee set date_of_joining='01/01/2015' where designation=7;
update employee set date_of_joining='12/11/2014' where designation=8;

create view employee_view as select id, fname, lname, age, salary, FORMAT(date_of_joining,  'ddd dd\t\h MMM yyyy hh:mm:ss tt') as date_of_joining from employee where designation=1;


select * from employee_view;

