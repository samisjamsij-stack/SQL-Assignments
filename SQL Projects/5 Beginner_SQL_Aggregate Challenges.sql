# Challenge 1 — Sales Count
# Write a query that displays: The total number of orders. The total sales amount

SELECT *
FROM orders;

SELECT SUM(TotalAmount) AS TotalSales
FROM Orders

# Challenge 2 — High-Value Orders
# Write a query that counts how many orders have a TotalAmount greater than $250.

SELECT COUNT(*) AS TotalOrders
FROM Orders
WHERE TotalAmount > 250;

# Challenge 3 — Average Sales
# Write a query that calculates the average TotalAmount for orders that are less than $350.

SELECT AVG(TotalAmount) AS TotalAmount
FROM Orders
WHERE TotalAmount > 350;

# Challenge 4 — Sales Above $200
# Write a query that displays:
# Number of orders with TotalAmount >= 200
# Total sales from those orders
# Average order amount

SELECT 
	COUNT(*) AS TotalAmount,
    SUM(TotalAmount) AS TotalSales,
    AVG(TotalAmount) AS OrderAmount
FROM Orders
WHERE TotalAmount >= 200

# Challenge 5 — Complete Sales Analysis
-- ======================================
# Write one SQL query that displays all five of the following for the Orders table:
# Number of orders
# Total sales
# Average order
# Smallest order
# Largest order
# Use: COUNT(), SUM(), AVG(), MIN(), and MAX()

SELECT
	COUNT(*) AS TotalAmount,
    SUM(TotalAmount) AS TotalSales,
    AVG(TotalAmount) AS AverageOrder,
    MIN(TotalAmount) AS SmallestOrder,
    MAX(TotalAmount) AS LargestOrder
FROM Orders;
