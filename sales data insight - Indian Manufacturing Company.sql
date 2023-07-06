-- check the records in every table
SELECT * FROM sales.customers;
SELECT * FROM sales.date;
SELECT * FROM sales.markets; -- have two rows invalid
SELECT * FROM sales.products;
SELECT * FROM sales.transactions;   -- currency not the same

-- add date to transactions table
SELECT sales.transactions.*, sales.date.*
FROM sales.transactions INNER JOIN sales.date
ON sales.transactions.order_date = sales.date.date;

-- check which year included in the table
SELECT DISTINCT year
FROM sales.date;

-- check sales in every year
SELECT SUM(sales.transactions.sales_amount)
FROM sales.transactions INNER JOIN sales.date
ON sales.transactions.order_date = sales.date.date
WHERE sales.date.year = 2017;

SELECT SUM(sales.transactions.sales_amount)
FROM sales.transactions INNER JOIN sales.date
ON sales.transactions.order_date = sales.date.date
WHERE sales.date.year = 2018;

SELECT SUM(sales.transactions.sales_amount)
FROM sales.transactions INNER JOIN sales.date
ON sales.transactions.order_date = sales.date.date
WHERE sales.date.year = 2019;

SELECT SUM(sales.transactions.sales_amount)
FROM sales.transactions INNER JOIN sales.date
ON sales.transactions.order_date = sales.date.date
WHERE sales.date.year = 2020;