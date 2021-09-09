-- DISTINCT (returns unique values in a column.)
SELECT DISTINCT Column1, 
Column2
FROM Table1

SELECT COUNT(DISTINCT Column1) 
FROM Table1

-- AVG (returns the average value of a numeric column.)
SELECT AVG(Column2)
FROM Table1

-- SUM (returns the total sum of a numeric column.)
SELECT SUM(Column4)
FROM Table1

-- MIN/MAX (returns the lowest/highest values in a column.)
SELECT MIN(Column1) AS First_Column,
       MAX(Column2) AS Second_Column
FROM Table1

-- CASE (if statement)
SELECT CASE WHEN Column1 = 'FR' THEN 'FR'
            WHEN Column1 = 'SO' THEN 'SO'
            WHEN Column1 = 'JR' THEN 'JR'
            WHEN Column1 = 'SR' THEN 'SR'
            ELSE 'No Year Data' END AS year_group,
            COUNT(1) AS Count
FROM Table1
GROUP BY CASE WHEN Column1 = 'FR' THEN 'FR'
              ELSE 'No Year Data' END
               
-- JOINS          
