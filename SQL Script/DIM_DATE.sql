-- Cleansed DIM_Date Table --
SELECT 
	[DateKey]
      ,[FullDateAlternateKey] AS Date
      -- ,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] AS Day
      -- ,[SpanishDayNameOfWeek]
      -- ,[FrenchDayNameOfWeek]
      -- ,[DayNumberOfMonth]
      -- ,[DayNumberOfYear]
      ,[WeekNumberOfYear] AS WeekNo
      ,[EnglishMonthName] AS Month
	  ,LEFT([EnglishMonthName], 3) AS MonthShort -- Useful for front end date navigation and front end graphs.
      -- ,[SpanishMonthName]
      -- ,[FrenchMonthName]
      ,[MonthNumberOfYear] AS MonthNo
      ,[CalendarQuarter] AS Quarter
      ,[CalendarYear] AS Year
      -- ,[CalendarSemester]
      -- ,[FiscalQuarter]
      -- ,[FiscalYear]
      -- ,[FiscalSemester]
FROM [AdventureWorksDW2022].[dbo].[DimDate]
WHERE[CalendarYear] >= 2022		-- In the request, client said that they usually look 2 years back in time when we do analysis of sales.
