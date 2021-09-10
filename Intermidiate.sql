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
               
-- INNER JOIN (return matched values between the columns.)
SELECT A.Column1 AS First_Column, 
       B.Column10 AS Tenth_Column
FROM Table1 A
JOIN Table2 B
ON A.First_Column = B.Tenth_Column

-- LEFT/RIGHT JOIN (return all rows on left/right side.)
SELECT A.Column1 AS First_Column,
       B.Column10 AS Tenth_Column
FROM Table1 A
LEFT JOIN Table2 B -- or RIGHT JOIN
ON A.First_Column = B.Tenth_Column

-- FULL JOIN (return all rows from left and right side.)
SELECT A.Column1 AS First_Column,
       B.Column10 AS Tenth_Column
FROM Table1 A
FULL OUTER JOIN Table2 B
ON A.First_Column = B.Tenth_Column

-- CHAINED JOIN
SELECT A.Column1 AS First_Column, 
       Column10 AS Tenth_Column, 
       Column20 AS Twenieth_Column
FROM Table1 AS A
INNER JOIN Table2 AS B
ON A.First_Columns = B.Tenth_Column
INNER JOIN Table3 AS C
ON A.First_Column = C.Twenieth_Column

-- JOIN + WHERE + GROUP BY
SELECT A.Column1 AS First_Column, 
       B.Column10 AS Tenth_Column
FROM Table1 A
LEFT JOIN Table2 B
ON A.First_Column = B.Tenth_Column
WHERE B.Tenth_Column > A.First_Column + 5
GROUP BY A.First_Column
