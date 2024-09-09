
-- WORLD DATABASE QUESTIONS

-- EASY
SELECT * FROM `country` 
WHERE CONTINENT LIKE 'SOUTH AMERICA';

SELECT POPULATION FROM `country` 
WHERE NAME LIKE 'GERMANY';

SELECT * FROM `city` 
WHERE COUNTRYCODE LIKE 'JPN';

-- MEDIUM
SELECT NAME FROM `country` 
WHERE CONTINENT LIKE 'AFRICA' 
ORDER BY POPULATION 
DESC LIMIT 0,3;

SELECT NAME, LIFEEXPECTANCY FROM `country` 
WHERE POPULATION > 1000000 AND POPULATION < 5000000;

SELECT country.Name FROM `country`
JOIN `countrylanguage` ON country.Code = countrylanguage.CountryCode
WHERE countrylanguage.Language = 'FRENCH' AND countrylanguage.IsOfficial = 'T';

-- CHINOOK DATABASE QUESTIONS

-- EASY
SELECT Title from Album
JOIN Artist ON Album.ArtistId = Artist.ArtistId
WHERE Artist.Name LIKE 'AC/DC';

SELECT FirstName, LastName, Email FROM Customer
WHERE Country LIKE 'Brazil';

SELECT Name FROM Playlist;

-- MEDIUM
SELECT COUNT(*) from Track
JOIN Genre ON Track.GenreId = Genre.GenreId
WHERE Genre.Name LIKE "Rock";

SELECT FirstName, LastName FROM Employee WHERE ReportsTo = (SELECT EmployeeId FROM Employee WHERE FirstName = 'Nancy' AND LastName = 'Edwards');

SELECT Invoice.CustomerId, SUM(InvoiceLine.Quantity) AS TotalSales FROM InvoiceLine
JOIN Invoice on Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY Invoice.CustomerId;

-- DATABASE QUERIES

SELECT EmployeeID, Employee
FROM employees
WHERE Division = 'SLS';

SELECT CustomerID, Customer
FROM customers
WHERE Revenue > 100000.00;

SELECT ProductID, ProductName, Price
FROM products
WHERE Price < 100.00;