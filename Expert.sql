-- CREATE STORED PROCEDURE: code that you can save, so the code can be reused over and over again
CREATE PROCEDURE SalesByCustomer
  @CustomerName nvarchar(50)
AS
SELECT A.Column1, sum(B.Column2) AS Second_Column
FROM Table1 A, Table2 B
WHERE A.Column1 = B.Second_Column
     AND A.Column1 = @CustomerName
GROUP BY A.Column1
ORDER BY A.Column1
GO

-- CALL STORED PROCEDURE
EXEC SalesByCustomer 'CUSTOMER_1'
GO

-- DROP STORED PROCEDURE
DROP PROCEDURE stored_procedure_name

-- RENAME STORED PROCEDURE
sp_rename 'old_procedure_name', 'new_procedure_name'


-- TRIGGER: special type of stored procedure that automatically runs when an event occurs in the database.

-- VIEW: is a created subset of a regular query
CREATE VIEW CustomersView
AS
SELECT A.Column1, B.Column11, B.Colummn12 FROM Table1 A, Table2 B
WHERE A.Column1 = B.Column11
AND B.Column12 = '3003A0'

-- ALTER VIEW
ALTER VIEW CustomersView
AS
SELECT A.Column1, B.Column11, B.Colummn12 FROM Table1 A, Table2 B
WHERE A.Column1 = B.Column11
AND B.Column12 = '2002D5'

-- UPDATE VIEW
UPDATE CustomersView
SET Column1 = 0001
WHERE Column2 = 'BRAZIL'

-- TRANSACTION: used when several operations must succeed or fail as a unit.
USE model
GO
BEGIN TRANSACTION
--> Delete students from local instance.
DELETE students WHERE id = 7
--> Delete students from remote instance.
DELETE RemoteServer.students WHERE id = 7
COMMIT TRANSACTION;
GO
