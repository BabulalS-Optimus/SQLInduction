--Run this query to use the databse i.e. SqlInduction
use SqlInduction;

--Run this query to create a UNIQUE INDEX on Employee table.
create unique index NameIndex on Employee(fName,lName);

--Run this query to delete an INDEX named NameIndex on Employee table.
drop index NameIndex on Employee;

--Run this query to create a FULLTEXT CATALOG in the DATABASE.
create fulltext catalog FTCatalog_Employee;

--Run this query to create a FULLTEXT INDEX on Employee table.
CREATE FULLTEXT INDEX ON Employee key index pk_PersonID on FTCatalog_Employee;

--Run this query to delete the FULLTEXT INDEX on Employee table.
drop fulltext index on Employee ;

--Run this query to delete a FULLTEXT CATALOG named FTCatalog from the DATABASE.
drop fulltext catalog  FTCatalog_Employee;