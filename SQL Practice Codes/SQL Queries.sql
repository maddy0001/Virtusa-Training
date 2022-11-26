CREATE TABLE Students (
    Regno int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255),
    Country varchar(255)
);
INSERT INTO Persons ( Regno, LastName, FirstName, Address, City, Country)
VALUES ('101', 'B', 'Madhusuthanan G', 'max Street', 'Marshall Streeet', 'USA');
INSERT INTO Persons ( Regno, LastName, FirstName, Address, City, Country)
VALUES ('102', 'R', 'Marshall', 'Max street', 'New York', 'USA');
INSERT INTO Persons ( Regno, LastName, FirstName, Address, City, Country)
VALUES ('103', 'S', 'Mathers', 'Fury street', 'San Fransisco', 'USA');
INSERT INTO Persons ( Regno, LastName, FirstName, Address, City, Country)
VALUES ('104', 'S', 'Bruce', 'hulk street', 'New Mexico', 'USA');
INSERT INTO Persons ( Regno, LastName, FirstName, Address, City, Country)
VALUES ('105', 'K', 'Dwayne', 'wwe street', 'Los Angels', 'USA');
INSERT INTO Persons ( Regno, LastName, FirstName, Address, City, Country)
VALUES ('106', 'B', 'Johnson', 'Rock street', 'Detroit', 'USA');

SELECT * FROM Persons
WHERE City='Detroit'
FETCH FIRST 1 ROWS ONLY;

SELECT COUNT(Regno)
FROM Persons;

SELECT * FROM Persons
WHERE FirstName LIKE 'D%a';

SELECT * FROM Persons
ORDER BY FirstName DESC;

SELECT SUM(Regno) as Total
FROM Persons
WHERE City='Detroit';

