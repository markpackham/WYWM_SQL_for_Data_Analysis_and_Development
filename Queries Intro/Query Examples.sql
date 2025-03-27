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