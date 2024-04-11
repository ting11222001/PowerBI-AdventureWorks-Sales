-- Cleansed DIM_Customers Table --

SELECT 
	c.customerKey AS CustomerKey, 
	-- ,[GeographyKey]
    c.geographyKey AS GeographyKey,
	-- ,[CustomerAlternateKey]
    -- ,[Title]
    c.firstName AS [First Name], 
	-- ,[MiddleName]
    c.lastName AS [LastName], c.firstName+' '+c.lastName AS [Full Name],-- Combined First and Last Name
    -- ,[NameStyle]
    -- ,[BirthDate]
    -- ,[MaritalStatus]
    -- ,[Suffix]
    -- ,[Gender]
    CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
	-- ,[EmailAddress]
    -- ,[YearlyIncome]
    -- ,[TotalChildren]
    -- ,[NumberChildrenAtHome]
    -- ,[EnglishEducation]
    -- ,[SpanishEducation]
    -- ,[FrenchEducation]
    -- ,[EnglishOccupation]
    -- ,[SpanishOccupation]
    -- ,[FrenchOccupation]
    -- ,[HouseOwnerFlag]
    -- ,[NumberCarsOwned]
    -- ,[AddressLine1]
    -- ,[AddressLine2]
    -- ,[Phone]
    -- ,[DateFirstPurchase]
    c.dateFirstPurchase AS [DateFirstPurchase], 
	-- ,[CommuteDistance]
    g.city AS [Customer City] -- Joined in Customer City from Geography Table
FROM [AdventureWorksDW2022].[dbo].[DimCustomer] AS c
     LEFT JOIN [AdventureWorksDW2022].[dbo].[DimGeography] AS g ON g.geographykey=c.geographykey
ORDER BY CustomerKey ASC -- Ordered List by CustomerKey
