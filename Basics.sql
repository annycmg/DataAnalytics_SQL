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
  
-- LIMIT (query a number n of rows)
SELECT * FROM Table1 
LIMIT 100

-- WHERE
SELECT * FROM Table1
WHERE Column3 = 'A'

-- COMPARISON (greater '>' than) and (less '<' than)
SELECT * FROM Table1
WHERE Column1 > 300 -- 301+

SELECT * FROM Table1
WHERE Column1 < 300 -- 299-

-- COMPARISON (greater or equal '>=' than) and (less or equal '<=' than)
SELECT * FROM Table1
WHERE Column1 >= 300 --300+

SELECT * FROM Table1
WHERE Column1 <= 300 --300-

-- COMPARISON (different '!= or <>' than)
SELECT * FROM Table1
WHERE Column3 != 'B'

SELECT * FROM Table1
WHERE Column3 <> 'B'


 

