-- SELECT ALL
SELECT * FROM Table1 

-- SELECT COLUMNS
SELECT Column1, 
       Column3
FROM Table1

-- SELECT COLUMNS AS
SELECT Column1 AS First_Column,
       Column3 AS Third_Column
FROM Table1
  
-- LIMIT (returns a number n of rows)
SELECT * 
FROM Table1 
LIMIT 100

-- WHERE
SELECT * 
FROM Table1
WHERE Column3 = 'A'

-- COMPARISON (greater '>' than) and (less '<' than)
SELECT * 
FROM Table1
WHERE Column1 > 300 -- 301+

SELECT * 
FROM Table1
WHERE Column1 < 300 -- 299-

-- COMPARISON (greater or equal '>=' than) and (less or equal '<=' than)
SELECT * 
FROM Table1
WHERE Column1 >= 300 --300+

SELECT * 
FROM Table1
WHERE Column1 <= 300 --300-

-- COMPARISON (different '!= or <>' than)
SELECT * 
FROM Table1
WHERE Column3 != 'B'

SELECT * 
FROM Table1
WHERE Column3 <> 'B'

-- ARITHMETICS (+-*/)
SELECT Column1,
       Column2,
       Column3,
       Column4,
       Column1 + (Column2 - 4) * Column4 AS Column5
FROM Table1
 
-- LIKE (returns match similar values, instead of exact values.)
SELECT *
FROM Table1
WHERE Column3 
LIKE 'Snoop%'

SELECT *
FROM Table1
WHERE Column3 
ILIKE 'snoop%' -- ILIKE ignores case sensitivity

-- IN (return specific list of values you'd like to include.)
SELECT *
FROM Table1
WHERE Column1 
IN (1, 2, 3)

-- BETWEEN (returns rows within a certain range.)
SELECT *
FROM Table1
WHERE Column2 
BETWEEN 5 
AND 10

-- IS NULL (returns rows that contain no data in a given column.)
SELECT *
FROM Table1
WHERE Column4 
IS NULL

-- AND (returns rows that satisfy two conditions.)
SELECT *
FROM Table1
WHERE Column2 = 2012 
AND Column1 <= 10

-- OR (returns rows that satisfy either of two conditions.)
SELECT *
FROM Table1
WHERE Column1 = 2013 
AND (Column3 ILIKE '%macklemore%' OR Column3 ILIKE '%timberlake%')

-- NOT (returns rows that do not match a certain condition.)
SELECT *
FROM Table1
WHERE Column1 = 2013
AND Column2 
NOT BETWEEN 2 
AND 3

-- GROUP BY (reorder results based on the data.)
SELECT *
FROM Table1
WHERE Column1 = 2013
ORDER BY Column3, Column1 DESC
