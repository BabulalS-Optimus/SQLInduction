use SqlInduction;

create unique index NameIndex on employee(fname,lname);

drop index NameIndex on employee;

create fulltext catalog FTCatalog_Employee;

CREATE FULLTEXT INDEX ON Employee key index pk_PersonID on FTCatalog_Employee;

drop fulltext index on employee ;

drop fulltext catalog  FTCatalog_Employee;