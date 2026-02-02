-- =============================================
-- CLASSICMODELS DATABASE QUERIES
-- =============================================

-- 1. List all customers
SELECT customerNumber, customerName, city, country
FROM customers
ORDER BY customerName;

-- 2. Total sales by product line
SELECT 
    productLine,
    SUM(quantityOrdered * priceEach) as total_sales
FROM orderdetails od
JOIN products p ON od.productCode = p.productCode
GROUP BY productLine
ORDER BY total_sales DESC;

-- 3. Customers with highest credit limit
SELECT 
    customerName,
    city,
    country,
    creditLimit
FROM customers
ORDER BY creditLimit DESC
LIMIT 10;
