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