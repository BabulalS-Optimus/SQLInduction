use SqlInduction;

alter table employee drop constraint pk_PersonID;


if exists ( select name from sys.indexes where name=N'pk_PersonID')
drop index pk_PersonID on employee;


create clustered  index CLIndexEmployee on employee(id);

drop index CLIndexEmployee on employee;

alter table employee add constraint pk_PersonID PRIMARY KEY (id);
