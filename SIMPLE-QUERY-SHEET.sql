--===========================================================================

--- SELECT 
SELECT * FROM TABLE_A

--===========================================================================

--- INNER JOIN
SELECT A.*, B.* FROM TABLE_A A
INNER JOIN TABLE_B B
ON A.ID= B.ID

--===========================================================================

--LEFT JOIN
SELECT A.* FROM TABLE_A A
LEFT JOIN TABLE_B B
ON A.ID= B.ID

--===========================================================================

-- RIGHT JOIN
SELECT A.* FROM TABLE_A A
RIGHT JOIN TABLE_B B
ON A.ID= B.ID

--===========================================================================
--NOLOCK 
SELECT A.* FROM TABLE_A A WITH(NOLOCK)

--===========================================================================
--TRANSACTION 

BEGIN TRANSACTION

DELETE FROM TABLE_A 

COMMIT TRANSACTION

--===========================================================================

--INSERT FROM A TABLE
INSERT INTO TABLE_A(ID,A)
SELECT ID, A FROM TABLE_B

--===========================================================================

--UPDATE JOINING TABLES

UPDATE A 
SET A.AC= NULL
FROM TABLE_A A
INNER JOIN TABLE_B B
ON A.ID= B.ID
WHERE A.ID=1

--===========================================================================

--TRUNCATE

TRUNCATE TABLE A

--===========================================================================

--CHECK TRANSACTION NUMBER

SELECT @@TRANCOUNT

--===========================================================================


