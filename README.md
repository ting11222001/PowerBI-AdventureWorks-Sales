# PowerBI-AdventureWorks-Sales

## Prepare the Data

### Data source

AdventureWorks DBs: https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver15&tabs=ssms

Downloaded the "Data Warehouse" and "Lightweight" version of 2022 datasets.

### Restore to AdventureWorks Database in SQL Server

I used the .bak file to the your sample database to my SQL Server instance. I used the graphical interface (GUI) in SQL Server Management Studio (SSMS).


### Update AdventureWorksDW Data with a SQL script

Script source: https://github.com/techtalkcorner/SampleDemoFiles/blob/master/Database/AdventureWorks/Update_AdventureWorksDW_Data.sql

The script updates the date colums for the AdventureWorksDW database with recent dates and it inserts new dates in the date dimension. 

It uses the current year as the last year for the data in the Adventure Works database.

After executed, double check using the `DimDate` table:
```bash
SELECT DISTINCT CalendarYear
  FROM [AdventureWorksDW2022].[dbo].[DimDate]
```