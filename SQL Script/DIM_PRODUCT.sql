SELECT 
	p.[ProductKey], 
	-- ,[ProductAlternateKey]
    p.[ProductAlternateKey] AS ProductItemCode,
	-- ,[ProductSubcategoryKey]
    -- , p.[ProductSubcategoryKey]
    ps.[EnglishProductSubcategoryName] AS [Product Subcategory Name],	-- Joined in from Sub Category Table (After ps table is joined, I can then access to its columns)
    pc.[EnglishProductCategoryName] AS [Product Category Name],		-- Joined in from Category Table
    -- ,[WeightUnitMeasureCode]
    -- ,[SizeUnitMeasureCode]
    [EnglishProductName],
	-- ,[SpanishProductName]
    -- ,[FrenchProductName]
    -- ,[StandardCost]
    -- ,[FinishedGoodsFlag]
    -- ,[Color]
    p.[Color] AS [Product Color],
	-- ,[SafetyStockLevel]
    -- ,[ReorderPoint]
    -- ,[ListPrice]
    -- ,[Size]
    p.[Size] AS [Product Size],
	-- ,[SizeRange]
    -- ,[Weight]
    -- ,[DaysToManufacture]
    -- ,[ProductLine]
    p.[ProductLine] AS [Product Line],
	-- ,[DealerPrice]
    -- ,[Class]
    -- ,[Style]
    -- ,[ModelName]
    p.[ModelName] AS [Model Name],
	-- ,[LargePhoto]
    -- ,[EnglishDescription]
    p.[EnglishDescription] AS [English Description],
	-- ,[FrenchDescription]
    -- ,[ChineseDescription]
    -- ,[ArabicDescription]
    -- ,[HebrewDescription]
    -- ,[ThaiDescription]
    -- ,[GermanDescription]
    -- ,[JapaneseDescription]
    -- ,[TurkishDescription]
    -- ,[StartDate]
    -- ,[EndDate]
    -- ,[Status]
    ISNULL(p.Status, 'Outdated') AS [Product Status]
FROM [AdventureWorksDW2022].[dbo].[DimProduct] AS p
     LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey=p.ProductSubcategoryKey
     LEFT JOIN dbo.DimProductCategory AS pc ON ps.ProductCategoryKey=pc.ProductCategoryKey
ORDER BY p.ProductKey ASC