-- to use the SQLInduction DataBase.
use SqlInduction;

-- Run this query to create a new table [t_product_master] with columns [ Product_ID, Product_Name and Cost_Per_Item]
create table t_product_master
(
 Product_ID varchar(50) PRIMARY KEY,
 Product_Name varchar(50),
 Cost_Per_Item numeric(18,2)
);

-- Run the following queries to insert the default data in the [t_product_master] table
insert into t_product_master values('P1','Pen',10);
insert into t_product_master values('P2','Scale',15);
insert into t_product_master values('P3','Note Book',25);

-- Run this query to create a new table [t_user_master] with columns [ User_ID, User_Name]
create table t_user_master
(
 User_ID varchar(50) PRIMARY KEY,
 User_Name varchar(50)
);

-- Run the following queries to insert the default data in the [t_product_master] table
insert into t_user_master values('U1','Alfred Lawrence');
insert into t_user_master values('U2','William Paul');
insert into t_user_master values('U3','Edward Fillip');

-- Run this query to create a new table [t_transaction] with columns [ User_ID, Product_ID, Transaction_Date, Transaction_Type, Transaction_Amount]
create table t_transaction
(
 User_ID varchar(50) foreign key references t_user_master(User_ID),
 Product_ID varchar(50) foreign key references t_product_master(Product_ID),
 Transaction_Date date,
 Transaction_Type varchar(50), 
 Transaction_Amount numeric(18,2)
);

-- Run the following queries to insert the default data in the [t_transaction] table
insert into t_transaction values('U1','P1','10-25-2010','Order',150);
insert into t_transaction values('U1','P1','11-20-2010','Payment',750);
insert into t_transaction values('U1','P1','11-20-2010','Order',200);
insert into t_transaction values('U1','P3','11-25-2010','Order',50);
insert into t_transaction values('U3','P2','11-26-2010','Order',100);
insert into t_transaction values('U2','P1','12-15-2010','Order',75);
insert into t_transaction values('U3','P2','01-25-2011','Payment',250);

--Run these queries to see the data from the specified tables.
select * from t_user_master;
select * from t_product_master;
select * from t_transaction;


--Run this query to see the required output of the Assignment-I.
