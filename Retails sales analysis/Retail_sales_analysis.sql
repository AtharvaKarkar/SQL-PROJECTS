-- create table

CREATE TABLE Retail_Sales ( transactions_id	INT PRIMARY KEY,
			  sale_date DATE,	
			  sale_time	TIME,
			  customer_id INT,
			  gender	VARCHAR(15),
			  age	INT,
			  category	VARCHAR(15), 
			  quantiy	INT,
			  price_per_unit FLOAT,	
			  cogs	FLOAT,
			  total_sale FLOAT

);

-- see all data
SELECT * FROM Retail_Sales;

-- command to see only 20 rows instead of full database.

SELECT * FROM Retail_Sales LIMIT 20;

-- command to count the number of rows in excel
SELECT COUNT(*) FROM Retail_Sales;


--command to check cogs = 0
SELECT * FROM Retail_Sales WHERE cogs IS NULL;


-- checking null data 

SELECT * FROM Retail_Sales WHERE transactions_id IS NULL
OR sale_date IS NULL OR sale_time IS NULL OR gender IS NULL OR category IS NULL OR quantiy IS NULL OR cogs IS NULL OR total_sale IS NULL;


-- deleting null data

DELETE FROM Retail_Sales WHERE transactions_id IS NULL
OR sale_date IS NULL OR sale_time IS NULL OR gender IS NULL OR category IS NULL OR quantiy IS NULL OR cogs IS NULL OR total_sale IS NULL;

-- how many sales have we made?

SELECT COUNT(*) AS total_sales FROM Retail_Sales;

-- number of customers

SELECT COUNT(*) AS customer_id FROM Retail_Sales;


-- how many unique customer has orderd??

SELECT COUNT(DISTINCT(customer_id)) FROM Retail_Sales;


-- distinct category bought by customer??
SELECT DISTINCT category FROM Retail_Sales;



/*Solving business questions */

-- Q1. Write a sql query to retrive all columns for sales made on '2022-11-05'

SELECT * FROM Retail_Sales WHERE sale_date = '2022-11-05';

--Q2. Write a SQL query to retrive all transactions where the category is 'clothing' and the quantity sold out is more than 3 in month of Nov-2022 ?

--SELECT category, SUM(quantiy) FROM Retail_sales WHERE category = 'Clothing' AND TO_CHAR(sale_date,'YYYY-MM') = '2022-11' GROUP BY 1;

SELECT * FROM Retail_Sales WHERE category = 'Clothing' AND To_CHAR(sale_date, 'YYYY-MM') = '2022-11' AND quantiy >=3;

--Q3. Write a Sql query to calculate total sales of each category??

SELECT category,
       SUM(total_sale) AS net_sale,
       COUNT(*) AS total_orders
FROM Retail_Sales
GROUP BY category;

SELECT * FROM Retail_sales;

