


use SqlInduction;

create table department (
id numeric(18) PRIMARY KEY IDENTITY(1,1),
name varchar(50),
);


create table employee (
id numeric(18) IDENTITY(1,1),
fname varchar(50),
lname varchar(50),
age numeric(18),
designation varchar(50),
salary numeric(18),
half_yearly_grade numeric(18),
deptid numeric(18) FOREIGN KEY REFERENCES department(id),
CONSTRAINT pk_PersonID PRIMARY KEY (id)
);

