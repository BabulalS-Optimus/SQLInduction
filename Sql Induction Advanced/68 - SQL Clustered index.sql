-- to use the SQLInduction DataBase.
use SqlInduction;

--Run this query if there is PRIMARY KEY with pk_PersonID name on Employee table.
alter table Employee drop constraint pk_PersonID;

--Run this query to create the Clustered Index on Employee table.
create clustered  index CLIndexEmployee on Employee(id);

--Run this query to drop the Clustered Index with name as CLIndexEmployee on Employee table.
drop index CLIndexEmployee on Employee;

--Run this query to add back the PRIMARY KEY removed in the first query of this SCRIPT.
alter table Employee add constraint pk_PersonID PRIMARY KEY (id);
