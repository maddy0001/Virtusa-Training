-- Create the EMPLOYEE and DEPARTMENT table and solve the given queries.

-- List the employee names those are getting salary more than 50000.
-- Retrieve the employee details those are working in the sales department.
-- Retrieve Empno, Ename, Dateofjoining, Deptno and Deptname details for all employees.
-- List the employee names those are start with letter R and S.
-- Display the number of employees working in each department.
-- Retrieve the employee details those are joined after June 2010 and working in accounts department.
-- Display the total salary of all the employees.
-- Display the employee details in descending order based on their name.
-- Show the employee details without duplicate.
--        j)    Retrieve the Ename and Dname for those are getting salary between 10000 and 25000.
       

CREATE TABLE Employee(
Empno number(10) primary key,
Ename varchar2(15) not null,
Job Char(10),
Salary number(10,3),
Deptno number(5),
Dataofjoining Date,
check (Salary>1000)
);

CREATE table Department(
Deptno number(5) primary key,
Dname varchar2(15) not null,
Location Char(10)
);

insert into Employee values(123,'Keerthivasan','sales',60000,34,'09-SEP-2001');
insert into Employee values(124,'Mouli','Manager',50000,35,'09-SEP-2001');
insert into Employee values(125,'rouls','sales',50000,36,'09-JUl-2010');
insert into Employee values(126,'rmmls','sales',20000,37,'09-JUl-2010');

insert into Department values(34,'sales','salem');
insert into Department values(35,'accounts','erode');
insert into Department values(36,'accounts','erode');
insert into Department values(37,'sales','salem');

select * from Employee where Salary > 50000;

select * from Employee e
left join Department d on e.Deptno = d.Deptno
where d.Dname = 'sales';

select e.Empno,e.Ename,e.Dataofjoining,d.Deptno,d.Dname from Employee e
inner join Department d on e.Deptno = d.Deptno;

select * from Employee where Ename like 'r%s';

select count(*) as count,d.Dname from Employee e
inner join Department d on e.Deptno = d.Deptno
group by d.Dname;

select * from Employee e 
inner join Department d on e.Deptno = d.Deptno
where d.Dname='accounts' and e.Dataofjoining > '01-JUN-2010';

select sum(Salary) as TotalSalary from Employee;

select * from Employee 
order by Ename desc;

select distinct * from Employee;

select e.Ename,d.Dname from Employee e
inner join Department d on e.Deptno = d.Deptno
where e.Salary > 10000 and e.Salary < 25000;
