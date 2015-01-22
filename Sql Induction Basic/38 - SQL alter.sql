use SqlInduction;

create table designation (
id numeric(18) PRIMARY KEY IDENTITY(1,1),
name varchar(50),
);

insert into designation values('Manager');
insert into designation values('HR');
insert into designation values('Team Head');
insert into designation values('Tech Lead');
insert into designation values('Software Developer');
insert into designation values('Software Intern');
insert into designation values('Trainee');
insert into designation values('Peon');

update employee  set designation='1' where designation='Manager';
update employee  set designation='2' where designation='HR';
update employee  set designation='3' where designation='Team Head';
update employee  set designation='4' where designation='Tech Lead';
update employee  set designation='5' where designation='Software Developer';
update employee  set designation='6' where designation='Software Intern';
update employee  set designation='7' where designation='Trainee';
update employee  set designation='8' where designation='Peon';


alter table employee alter column designation numeric(18);

alter table employee add foreign key (designation) references designation(id);