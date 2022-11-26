-- Create the CLIENT and PRODUCT table and solve the given queries.

-- List the client names those are having balance more than 50000.
-- Retrieve the client details those are from the same state.
-- Retrieve Clientno, clientname, purchased productid, productname and costprice details for all clients.
-- List the client names those are having second letter as s.
-- Display the number of clients from each state.
--  Retrieve the client details those are purchased the product after june2010 and from Chennai city.
-- Display the total balance of all the clients.
-- Display the client details in descending order based on their state and city.
--  Show the client details without duplicate.
-- Retrieve the clientname and purchased productname for those are having cost price between   
--            1000 and  3500.



create table Client(
Clientno number(5) primary key,
Cname varchar2(15) not null,
City Char(10),
State Char(10),
Pincode Number(10,2),
Productid Number(5),
Noofproductsold Number(5),
Purchasedate date,
Balance Number(5)
check (Balance <=100000)
);

create table Product(
Productid number(5) primary key,
Productname varchar2(15) not null,
Qtyavailable Char(10),
Costprice Number(10,2)
);

insert into Client values(01,'Mouli','salem','TN',65784,001,2,'10-JUN-2001',60000);
insert into Client values(02,'keerthi','erode','TN',65785,002,3,'10-AUG-2001',70000);
insert into Client values(03,'kserthi','erode','KA',65786,003,3,'10-AUG-2001',80000);
insert into Client values(04,'surya','Chennai','TN',65785,002,3,'10-AUG-2010',70000);
insert into Client values(05,'makesh','Chennai','TN',65787,005,3,'10-AUG-2010',70000);

insert into Product values(001,'mobile',20,200);
insert into Product values(002,'laptop',20,300);
insert into Product values(003,'watch',20,50);
insert into Product values(004,'watch',20,80);
insert into Product values(005,'watch',20,1200);

SELECT * from Client where Balance > 50000;

select c.* from Client c
where exists (select c1.* from Client c1 where c1.state=c.state);

select c.Clientno,c.Cname,p.Productid,p.Productname,p.Costprice 
from Client c inner join Product p on
c.Productid=p.Productid;

select Cname from Client where substr(Cname,2,1) = 's';

select count(Clientno) as Count,State from Client
group by state;

select * from Client 
where City = 'Chennai' and Purchasedate > '01-JUN-2010';

select sum(Balance) as TotalBalance from Client;

select * from Client
order by State desc,City desc;

select distinct * from Client;

select c.Cname,p.Productname from Client c 
inner join Product p on c.Productid=p.Productid
where p.Costprice > 1000 and p.Costprice < 3500;
