--LEFT JOIN--

SELECT Purchaser.PurchaserName, Flipkart.OrderId
FROM Purchaser
LEFT JOIN Flipkart ON Purchaser.CustomerID = Flipkart.CustomerID
ORDER BY Purchaser.PurchaserName;


--RIGHT JOIN--

SELECT Flipkart.OrderId, Purchaser.LastName, Purchaser.FirstName
FROM SELECT City FROM Purchaser
UNION
SELECT City FROM Suppliers
ORDER BY City;
RIGHT JOIN Purchaser ON Orders.CustomerID = Purchaser.CustomerID
ORDER BY Flipkart.OrderId;


---FULL JOIN--

SELECT Purchaser.PurchaserName, Flipkart.OrderId
FROM Purchaser
FULL OUTER JOIN Flipkart ON Purchaser.CustomerID=Flipkart.CustomerID
ORDER BY Purchaser.PurchaserName;


---INNER JOIN----

SELECT Flipkart.OrderId, Purchaser.PurchaserName
FROM Flipkart
INNER JOIN Purchaser ON Flipkart.CustomerID = Purchaser.CustomerID;


--GROUP BY----

SELECT COUNT(CustomerID), Country
FROM Purchaser
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;


-----UNION-----

SELECT FirstName FROM Purchaser
UNION
SELECT Address FROM Flipkart
ORDER BY City;
