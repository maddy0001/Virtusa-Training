-- Create the SOFTWARE table and solve the given queries.


-- Retrieve the SOFTWARE table structure.
-- b) Retrieve all the records from SOFTWARE table.
-- c) Change the Companyname column data type width as 20 in SOFTWARE table.
-- d) Add a column DateofRelease with date data type to the SOFTWARE table.
-- e) Change the name of the SOFTWARE table to SOFTWARE _DETAILS.
-- f) Delete a column Softwarename from SOFTWARE _DETAILS table.
-- g) Truncate the SOFTWARE _DETAILS table.
-- h) Drop the SOFTWARE _DETAILS table.

create table SOFTWARE(
 CompanyId NUmber(5) primary key,
 CompanyName char(10),
 SoftwareId Number(5) unique,
 Softwarename varchar2(15) not null,
 Branchname Char(10),
 Pincode Number(5,2),
 Cost Number(5)
) 
insert into SOFTWARE values(123,'ABC',34,'SOFT','CSE',638,12000);
desc SOFTWARE;
select * from SOFTWARE;
alter table SOFTWARE modify CompanyName char(20);
alter table SOFTWARE add Dateofjoining Date;
rename  SOFTWARE TO SOFTWARE_DETAILS;
alter table SOFTWARE_DETAILS drop column Softwarename;
truncate table SOFTWARE_DETAILS;
drop table SOFTWARE_DETAILS;
