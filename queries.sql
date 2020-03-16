-- Read Data
SELECT Country, City, CustomerName
FROM Customers;

--the list of all the suppliers from the USA

--all customers we have in the USA, organized by country descending
SELECT Country, City, CustomerName, ContactName
FROM Customers
WHERE Country ='USA' or City = 'Paris'
ORDER BY Country DESC;

--all the customers we have in the USA or Paris by Country Asending, then by City Descendying
SELECT Country, City, CustomerName, ContactName
FROM Customers
WHERE Country ='USA' or City = 'Paris'
ORDER BY Country, City DESC;

--all products that cost more than 25
SELECT * FROM [Products]
WHERE price > 25
ORDER BY price;

--the 5 most expensive products
SELECT *
FROM [Products]
WHERE price > 25
ORDER BY price DESC
LIMIT 5;

--add data
INSERT INTO [Shippers] (ShipperName, Phone)
VALUES ('Lambda Shipping', '(555) 555-1234');

--update data
UPDATE [Shippers]
SET Phone = '(505)555-2345' -- DANGER, NO WHERE CLAUSE, ALL RECORDS WILL UPDATE!
--SELECT * FROM [Shippers] -- run this first to make sure you are in the right location to update
UPDATE Shippers SET Phone = '(505) 555-2344'
WHERE ShipperID = 4;

--Delete data
DELETE FROM Shippers
WHERE shipperID = 4;