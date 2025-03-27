SELECT name, age
FROM players


-- Using the SELECT DISTINCT statement, we are able to remove all duplicate segment names
SELECT DISTINCT segment
FROM customers


SELECT *
FROM location
WHERE State = "Texas"

SELECT *
FROM players
WHERE weight = 108.9

SELECT *
FROM game_scores
WHERE steals > 150

SELECT name
FROM players
WHERE age > 30 AND pts > 1700


-- AND --

SELECT *
FROM players
WHERE age < 26 AND height > 200

SELECT *
FROM game_scores
WHERE steals < 1 AND Assists < 2


-- OR --

SELECT *
FROM players
WHERE height > 200 OR weight > 100


-- LIKE --
SELECT *
FROM products
WHERE ProductName LIKE "%Xerox%"


-- LIKE "Xerox" will return only the records that have Xerox, with no allowance for spaces or other characters before or after Xerox.
-- LIKE “% Xerox %”  will return records with characters or spaces either before or after the word Xerox. In this case, the text “MyXerox” would be returned if found in the data.
-- “% Xerox” means Xerox can follow anything but must be the last text found in the column. “The Xerox” would be returned but “Xerox printer" would not.
-- "Xerox %" means that Xerox must be the first text in the column. Therefore “A Xerox” would not be returned but “Xerox printer” would.
-- "X%X" will return all records that begin with an X and end with an X.

-- LIKE 'a_c' will return strings like 'abc', 'ahc' or 'a3c' where the second character can be any character. 
-- In our data, we could request
-- LIKE PostalCode '6______' to return all postal codes starting with 6
-- LIKE PostalCode '6_____5' to return all postal codes starting with 6 and ending in 5

SELECT *
FROM products
WHERE ProductName LIKE "%Paper"

SELECT *
FROM products
WHERE SubCategory LIKE "%Phones%" AND ProductName LIKE "%Nokia%"

SELECT *
FROM customers
WHERE CustomerName LIKE "A%"

-- NOT LIKE --

SELECT *
FROM customers
WHERE Segment NOT LIKE "%Consumer%"

SELECT *
FROM products
WHERE productID NOT LIKE "OFF%"

-- COUNT --

SELECT COUNT (CustomerID)
FROM customers
WHERE Segment LIKE "%Consumer%"

SELECT COUNT (OrderID)
FROM sales
WHERE Profit > 1000

-- SUM --
-- SUM function adds up all the values specified by the expression. This would commonly be used when we need to find a ‘total’, such as total profit or revenue. 
-- You can use an expression with your SUM function eg the SUM of the (quantity multiplied by 150)

SELECT
    SUM(Sales) AS TotalSales,
    SUM(Profit) AS TotalProfit
FROM sales

SELECT SUM (Quantity)
FROM sales

-- MIN --
SELECT MIN(steals)
FROM game_scores


-- MAX --
SELECT MAX(steals)
FROM game_scores


-- RANGE --
-- Just MAX - MIN
SELECT
    MIN(Sales) AS LowestSale,
    MAX(Sales) AS HighestSale,
    (MAX(Sales) - MIN(Sales)) AS SalesRange
FROM sales

SELECT MAX(Profit) - MIN(Profit) AS Profit_Range
FROM sales


-- AVG
-- The AVG function is used to find the average (mean) of numerical values within a specified column. 
-- Note: NULL values are ignored.

SELECT AVG(Discount) as AverageDiscount
FROM sales

SELECT AVG(discount) AS AverageDiscount
FROM sales
WHERE OrderDate = "22/11/2015"

SELECT AVG(FLD_GLS_made)
FROM game_scores

SELECT AVG(PTS)
FROM players
WHERE age < 25


-- ROUND --
-- ROUND  function is used to round a numeric value to a specified number of decimal places.

SELECT ROUND(Discount, 1)
FROM sales