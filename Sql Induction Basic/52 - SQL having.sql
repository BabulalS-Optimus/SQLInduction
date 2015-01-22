use SqlInduction;

create table orders (
 OrderId numeric(18) PRIMARY KEY,
 OrderDate date,
 Orders numeric(18),
 CustomerName  varchar(50)
);

insert into orders values(1,'06/01/2013',2500,'Babu Lal Swami' );
insert into orders values(2,'05/02/2014',1500,'Babu Lal Swami' );
insert into orders values(3,'04/03/2015',2200,'Babu Lal Swami' );
insert into orders values(4,'03/04/2015',2500,'Babu Lal Swami' );
insert into orders values(5,'02/05/2013',1700,'Babu Lal Swami' );
insert into orders values(6,'01/06/2012',1900,'Babu Lal Swami' );
insert into orders values(7,'01/06/2011',1900,'Babu Lal Swami' );

select Orders,count(OrderDate) as NumberOfOrders from orders group by Orders having Orders<2000;

