-- 1.
SELECT * FROM Customers;

-- 2.
SELECT DISTINCT Country FROM Customers;

-- 3.
SELECT * FROM Customers WHERE CustomerID LIKE 'BL%'; 

-- 4.
SELECT TOP 100 * FROM Orders;

 5.
SELECT * FROM Customers WHERE PostalCode = '1010' OR PostalCode = '3012' OR PostalCode = '12209' OR PostalCode = '05023';

-- 6.
SELECT * FROM Orders WHERE ShipRegion IS NOT NULL;

-- 7.
SELECT * FROM Customers ORDER BY Country ASC, City ASC

-- 8.
INSERT INTO Customers --(CustomerID,CompanyName,ContactName,ContactTitle,Address,City,Region,PostalCode,Country,Phone,Fax)
VALUES('CANNO','CannonsRUS','Jeff Thomas', 'Pee On','1808 Grandmother House','Wouldntyoulike','Parts Unknown','12345','Peteroia','5558675309','5558974562');

-- 9.
UPDATE Orders SET ShipRegion = 'EuroZone' WHERE ShipCountry = 'France';

-- 10.
DELETE FROM [Order Details] WHERE  Quantity = 1;

-- 11.
SELECT AVG(Quantity) As Average FROM [Order Details];
SELECT MAX(Quantity) As Largest FROM [Order Details];
SELECT MIN(Quantity) As Smallest FROM [Order Details];

-- 12.
Select AVG(Quantity) As Average,
MAX(Quantity) As Largest,
MIN(Quantity) As Smallest 
FROM [Order Details]
Group By OrderID;


-- 13.
Select customerID from Orders Where OrderID = '10290';

-- 14.
SELECT Orders.OrderID, Customers.ContactName, Orders.OrderDate FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;
SELECT * FROM ORDERS LEFT JOIN Customers ON Orders.CustomerID = Customers.CustomerID
SELECT * FROM ORDERS RIGHT JOIN Customers ON Orders.CustomerID = Customers.CustomerID

-- 15.
SELECT FirstName FROM Employees where ReportsTo IS NULL;

-- 16.
SELECT FirstName FROM Employees WHERE ReportsTo = 2;

