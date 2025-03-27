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

SELECT * FROM products WHERE productID NOT LIKE "OFF%"