use SqlInduction;


create nonclustered  index NCLIndexEmployee on employee(id);

drop index NCLIndexEmployee on employee;