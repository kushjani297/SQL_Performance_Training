USE WideWorldImportersDW
GO
ALTER DATABASE SCOPED CONFIGURATION CLEAR PROCEDURE_CACHE
GO

DBCC DROPCLEANBUFFERS
GO

SET STATISTICS TIME ON
SELECT COUNT(DISTINCT [WWI Order ID])
FROM [Fact].[OrderHistoryExtended]
SET STATISTICS TIME OFF
GO
/*
	Row Count: 29620736
	SQL Server Execution Times:
	CPU time = 11812 ms,  elapsed time = 4877 ms.
*/

DBCC DROPCLEANBUFFERS
GO

SET STATISTICS TIME ON
SELECT APPROX_COUNT_DISTINCT([WWI Order ID])
FROM [Fact].[OrderHistoryExtended]
SET STATISTICS TIME OFF
GO
/*
	Row Count: 29852585
	SQL Server Execution Times:
    CPU time = 7564 ms,  elapsed time = 4121 ms.
*/

