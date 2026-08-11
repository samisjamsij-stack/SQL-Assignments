# Task 1 - Count Customers
-- ========================
# Exercise 1 - Count all customers

SELECT COUNT(*) AS TotalCustomers
FROM Customer;

# Exercise 2 - Count customers with CustomerID greater than 102

SELECT COUNT(*) AS TotalCustomers
FROM Customer
WHERE CustomerID > 102;

# Task 2 - Count Orders
-- ======================
# Exercise 1 - Count all orders

SELECT COUNT(*) AS TotalOrders
FROM Orders;

# Exercise 2 - Count orders greater than $300

SELECT COUNT(*) AS LargeOrders
FROM Orders
WHERE TotalAmount > 300;

# Task 3 — Total Order Amount
-- ===========================
# Exercise 1 - Calculate total sales

SELECT SUM(TotalAmount) AS TotalSales
FROM Orders;

# Exercise 2 - Calculate sales for orders of $300 or more

SELECT SUM(TotalAmount) AS TotalSales
FROM Orders
WHERE TotalAmount >= 300;

# Task 4 — Average Order Amount
-- ==============================
# Exercise 1 — Calculate average order amount

SELECT AVG(TotalAmount) AS AverageOrder
FROM Orders;

# Exercise 2 - Calculate average for orders greater than $200

SELECT AVG(TotalAmount) AS AverageOrder
FROM Orders
WHERE TotalAmount > 200;

# Task 5 — Minimum Order Amount
-- =============================
# Exercise 1 — Find the smallest order

SELECT MIN(TotalAmount) AS MinimumOrder
FROM Orders;

# Exercise 2 -  Find the smallest order greater than $200

SELECT MIN(TotalAmount) AS MinimumOrder
FROM Orders
WHERE TotalAmount > 200;

# Task 6 - Maximum Order Amount
-- =============================
# Exercise 1 — Find the largest order

SELECT MAX(TotalAmount) AS MaximumOrder
FROM Orders;

# Exercise 2 — Find the largest order below $400

SELECT MAX(TotalAmount) AS MaximumOrder
FROM Orders
WHERE TotalAmount < 400;

# Task 7 — Multiple Aggregate Functions
-- =====================================
# Exercise 1 — Count, total, and average

SELECT
    COUNT(*) AS TotalOrders,
    SUM(TotalAmount) AS TotalSales,
    AVG(TotalAmount) AS AverageOrder
FROM Orders;

# Exercise 2 - Minimum, maximum, and average

SELECT
    MIN(TotalAmount) AS MinimumOrder,
    MAX(TotalAmount) AS MaximumOrder,
    AVG(TotalAmount) AS AverageOrder
FROM Orders;

# Task 8 — Aggregate with WHERE
-- =============================
# Exercise 1 — Total sales for orders of $250 or more

SELECT SUM(TotalAmount) AS TotalSales
FROM Orders
WHERE TotalAmount >= 250;

# Exercise 2 — Average for orders below $300

SELECT AVG(TotalAmount) AS AverageOrder
FROM Orders
WHERE TotalAmount < 300;

# Task 9 — Customer ID Aggregates
-- ===============================
# Exercise 1 — Smallest CustomerID

SELECT MIN(CustomerID) AS MinimumCustomerID
FROM Customer;

# Exercise 2 — Largest CustomerID

SELECT MAX(CustomerID) AS MaximumCustomerID
FROM Customer;

# Task 10 — Business Sales Summary
-- ================================
# Exercise 1 — Complete sales summary

SELECT
    COUNT(*) AS TotalOrders,
    SUM(TotalAmount) AS TotalSales,
    MIN(TotalAmount) AS MinimumOrder,
    MAX(TotalAmount) AS MaximumOrder,
    AVG(TotalAmount) AS AverageOrder
FROM Orders;

# Exercise 2 — Summary for orders of $200 or more

SELECT
    COUNT(*) AS TotalOrders,
    SUM(TotalAmount) AS TotalSales,
    AVG(TotalAmount) AS AverageOrder,
    MIN(TotalAmount) AS MinimumOrder,
    MAX(TotalAmount) AS MaximumOrder
FROM Orders
WHERE TotalAmount >= 200;