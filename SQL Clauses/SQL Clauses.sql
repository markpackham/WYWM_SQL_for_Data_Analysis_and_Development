-- GROUP BY --
Select count(playerID) as Number_of_Players, age
from players
where age < 23
GROUP BY age

SELECT COUNT(CustomerID), Segment
FROM customers
GROUP BY Segment

SELECT COUNT(SubCategory), Category
FROM products
GROUP BY Category


-- HAVING - can use as an alternative to WHERE, HAVING will NOT work with non aggregate-functions
SELECT Region, State
FROM location
GROUP BY State
HAVING Region = "West"

SELECT ProductID, SUM(sales) as Total_Sales
FROM sales
GROUP BY ProductID
HAVING Total_sales > 10000

SELECT name, age, weight
FROM players
GROUP BY name
HAVING age < 25 AND weight < 90

SELECT name, height
FROM players
GROUP BY name
HAVING height < 180

-- HAVING with WHERE
SELECT ProductID, ShipMode
FROM sales
WHERE ShipMode = "Same Day"
GROUP BY ProductID
HAVING SUM(Quantity) > 10 AND SUM(Profit) < 0

-- ORDER BY ---
SELECT ProductID, SUM(Sales) as TotalSales
FROM sales
GROUP BY ProductID
HAVING TotalSales > 10000
ORDER BY TotalSales desc

-- LIMIT (in SQL Server is is called TOP) --
SELECT ProductID, SUM(Sales) as TotalSales
FROM sales
GROUP BY ProductID
HAVING TotalSales > 10000
ORDER BY TotalSales desc
LIMIT 2



-- Test notes ---

SELECT games_played
FROM players
WHERE name = "Chris Andersen"

SELECT playerID
FROM players
WHERE age > 30 AND games_played > 80

SELECT playerID, SUM(FLD_GLS_made + 3PT_GLS_made) AS TotalGoals
FROM game_scores
GROUP BY playerID
ORDER BY TotalGoals desc

SELECT playerID, SUM(FLD_GLS_made + 3PT_GLS_made) AS TotalGoals
FROM game_scores
GROUP BY playerID
HAVING TotalGoals > 600

SELECT name, age, games_played, PTS
FROM players
GROUP BY name
HAVING age > 30 AND games_played > 80
ORDER BY PTS

SELECT ProductID, SUM(Sales) as TotalSales, Profit
FROM sales
GROUP BY ProductID
HAVING Profit < 0 AND TotalSales > 5000
ORDER BY Profit desc

SELECT playerID, personal_fouls
FROM game_scores
ORDER BY personal_fouls desc