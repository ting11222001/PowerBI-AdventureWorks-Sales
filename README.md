# PowerBI-AdventureWorks-Sales

## Thought Process

1. Setup Sample Dataset
2. Check Business Request
3. Data Cleaning & Transformation
4. Creating Dashboards


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

## Business Request

### Sample Email

```bash
Hi Li!

I hope you are doing well. We need to improve our internet sales reports and want to move from static reports to visual dashboards.

Essentially, we want to focus it on how much we have sold of what products, to which clients and how it has been over time.

Seeing as each sales person works on different products and customers it would be beneficial to be able to filter them also.

We measure our numbers against budget so I added that in a spreadsheet so we can compare our values against performance. 

The budget is for 2024 and we usually look 2 years back in time when we do analysis of sales.

Let me know if you need anything else!

Cheers,
Steven
```

### Sample Requirements

##### Business Demand Overview

- Reporter: Steven – Sales Manager
- Value of Change: Visual dashboards and improved Sales reporting or follow up or sales force
- Necessary Systems: Power BI, CRM System
- Other Relevant Info: Budgets have been delivered in Excel for 2024

##### User Stories (Sales Dashboard Requirements)

| No | As a (role)            | I want (request / demand)                 | So that I (user value)                              | Acceptance Criteria                                            |
|----|------------------------|--------------------------------------------|-----------------------------------------------------|-----------------------------------------------------------------|
| 1  | Sales Manager          | To get a dashboard overview of internet sales | Can follow better which customers and products sells the best | A Power BI dashboard which updates data once a day              |
| 2  | Sales Representative  | A detailed overview of Internet Sales per Customers | Can follow up my customers that buys the most and who we can sell more to | A Power BI dashboard which allows me to filter data for each customer |
| 3  | Sales Representative  | A detailed overview of Internet Sales per Products | Can follow up my Products that sells the most        | A Power BI dashboard which allows me to filter data for each Product |
| 4  | Sales Manager          | A dashboard overview of internet sales       | Follow sales over time against budget                | A Power Bi dashboard with graphs and KPIs comparing against budget |


### Data tables

#### Fact Table vs Dimension Table in Data Warehouse Modeling

Fact Table:

- A Fact Table contains quantitative data, often referred to as facts or measures, related to a business process or event.
- Each row in a Fact Table represents a specific instance or occurrence of the event being measured.
- Fact Tables typically contain numerical values, such as sales amounts, quantities sold, or durations.
- Fact Tables are associated with multiple Dimension Tables through foreign key relationships.
- Example: Consider a Fact Table that records sales transactions in a retail store. Each row in this Fact Table could represent a single sale, with columns indicating details such as the sales amount, quantity sold, date, store location, and product sold.

Dimension Table:

- A Dimension Table contains descriptive attributes or characteristics associated with the facts in a Fact Table.
- Dimension Tables provide context to the quantitative data stored in the Fact Table, allowing users to analyze and understand the data more effectively.
- Each row in a Dimension Table represents a unique category or entity, and it typically contains textual or categorical data.
- Dimension Tables are often smaller in size compared to Fact Tables but can have many rows.
- Example: Continuing with the retail store example, Dimension Tables could include tables for Product, Customer, Time, and Store Location. Each row in the Product Dimension Table could represent a unique product sold in the store, with columns such as ProductID, ProductName, Category, and Manufacturer.

#### Identify Necessary Tables

From the sample requests, the tables I need could be:

- DIMDate
- DIMProduct
- DIMCustomer


#### Data Transformation

I used several SQL query to pick the attributes columns I need and reformat the value such as giving a shorter Month name for the Month column, etc. and export the transformed result into .csv files.

Queries:

- DIM_DATE.sql
- DIM_CUSTOMER.sql
- DIM_PRODUCT.sql

Result tables:

- DIM_DATE.csv
- DIM_CUSTOMER.csv
- DIM_PRODUCT.csv


#### SQL query formatting

Used this website:
https://www.red-gate.com/website/sql-formatter

