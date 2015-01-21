use SqlInduction;

create table employee_constraints (
id numeric(18) PRIMARY KEY,
fname varchar(50) NOT NULL,
lname varchar(50) ,
email varchar(50) UNIQUE,
deptid numeric(18) foreign key references department(id),
age numeric(18) check (age>0),
active bit default 'false'
);



