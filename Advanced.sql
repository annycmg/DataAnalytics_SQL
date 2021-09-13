-- Change data type (both rows do the same action)
SELECT A.Column8::timestamp AS Eighth_Column,
       B.Column10 AS Tenth_Column
  FROM Table1 A
  JOIN Table2 B
    ON A.Eighth_Column = B.Tenth_Column
    
-- LEFT or RIGHT (clean a string)
SELECT Column1,
       Column2,
       LEFT(Column2, 10) AS Second_Column -- It cleans the 10 first characters starting from left side.
  FROM Table1
  
-- CONCAT
SELECT Column1,
       Column2,
       CONCAT(Column1, ', ', Column2) AS First_and_Second_Column
  FROM Table1
  
-- UPPER or LOWER
SELECT UPPER(Column1) AS First_Column,
       LOWER(Column2) AS Second_Column
  FROM Table1

-- Turning string into date
SELECT Column9,
       (SUBSTR(Column9, 7, 4) || '-' || LEFT(Column9, 2) || '-' || SUBSTR(Column9, 4, 2))::date AS Ninth_Column_To_Date
  FROM Table1
  
-- COALESCE (fill null fields with something)
SELECT Column3,
       Column4,
       COALESCE(Column4, 'No Description')
  FROM Table1
 ORDER BY Column3 DESC
 
 -- SUBQUERIES
 SELECT LEFT(A.Column1, 2) AS First_Column_Month,
       A.Column9,
  FROM (
        SELECT Column11,
               Column12,
          FROM Table2
       ) A
 GROUP BY Column3
 ORDER BY Column3
 
 -- SUBQUERY on WHERE
 SELECT *
 FROM Table1
 WHERE Date = ( SELECT MIN(Column13) FROM Table2 )
 
 -- JOIN SUBQUERIES
 SELECT *
  FROM Table1 A
  JOIN ( SELECT Column11
         FROM Table2
         ORDER BY Column11
         LIMIT 5
       ) B
    ON A.Column1 = B.Column11
    
-- CASE
SELECT CASE Column21
       WHEN 2000 THEN year_2000
       WHEN 2001 THEN year_2001
       WHEN 2002 THEN year_2002
       ELSE NULL END
       AS Third_Column
  FROM Table3
  
-- PROCEDURES   
CREATE PROCEDURE SelectAllCustomers @City nvarchar(30)
AS
SELECT * FROM Table1 WHERE City_Column = @City
GO;

EXEC SelectAllCustomers @City = 'London';

-- CREATE TABLE
CREATE TABLE Table1 (
    Column1 INT,
    Column2 VARCHAR(256),
    Column3 DECIMAL(16,2)
);

-- TRUNCATE TABLE (delete the table content, but not the table itself)
TRUNCATE TABLE Table1

--ALTER TABLE
ALTER TABLE Table1
ADD Column19 INT

ALTER TABLE Table1
DROP COLUMN Column9

ALTER TABLE Table1
ALTER COLUMN Column1 VARCHAR(256);

ALTER TABLE Persons
ADD CONSTRAINT PK_Person PRIMARY KEY (ID,LastName);

-- NOT NULL CONSTRAINT
CREATE TABLE Persons (
    ID int NOT NULL,
    FirstName varchar(255) NOT NULL
);

-- UNIQUE CONSTRAINT
CREATE TABLE Persons (
    ID int NOT NULL UNIQUE,
    FirstName varchar(255)
);

-- PK CONSTRAINT
CREATE TABLE Persons (
    ID int NOT NULL,
    FirstName varchar(255),
    CONSTRAINT PK_Person PRIMARY KEY (ID,FirstName)
);

--FK CONSTRAINT
CREATE TABLE Orders (
    OrderID int NOT NULL AUTOINCREMENT,
    PersonID int,
    PRIMARY KEY (OrderID),
    CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
);

-- VIEW
CREATE VIEW View1 AS
SELECT Column1, Column2
FROM Table1
WHERE Column1 = 12;

-- INSERT
INSERT INTO Table2 (Column11, Column12, Column13)

-- UPDATE
UPDATE Table1
SET Column1 = Value1, Column2 = Value2
WHERE Column1 = 10;
