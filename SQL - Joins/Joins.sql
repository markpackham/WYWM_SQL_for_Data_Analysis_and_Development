-- JOIN --
-- When you use the keyword JOIN, the JOIN used is often the LEFT JOIN --
-- The LEFT JOIN is also called the LEFT OUTER JOIN. --

SELECT ProductName, SUM(sales) as TotalSales
FROM sales s
JOIN products p
ON p.ProductID = s.ProductID
GROUP BY ProductName
ORDER BY TotalSales desc


SELECT Segment, SUM(sales) as TotalSales
FROM sales s
JOIN customers c
ON c.CustomerID = s.CustomerID
GROUP BY Segment
ORDER BY TotalSales desc