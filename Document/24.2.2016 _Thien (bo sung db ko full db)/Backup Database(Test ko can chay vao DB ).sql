
USE POSEZ2U

GO 

BACKUP DATABASE POSEZ2U TO DISK = 'F:\POSEZ2U.Bak'

ALTER DATABASE POSEZ2U SET SINGLE_USER WITH ROLLBACK IMMEDIATE

RESTORE DATABASE POSEZ2U
FROM DISK = 'F:\POSEZ2U.Bak'


