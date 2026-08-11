# Task 11 - Customer ID Status

# Exercise 1 - Classify customers as:
# CustomerID 101 or 102 → Group A
# CustomerID 103 or 104 → Group B
# CustomerID 105 → Group C

SELECT
	CustomerID,
    CustomerName,
    
    CASE
		WHEN CustomerID <= 102 THEN 'Group A'
        WHEN CustomerID <= 104 THEN 'Group B'
		ELSE 'Group C'
	END AS CustomerGroup
FROM Customer

# Exercise 2 - Classify customers as:
# CustomerID less than 103 → Low ID
# CustomerID 103–104 → Middle ID
# CustomerID 105 → High ID

SELECT
	CustomerID,
    CustomerName,
    
    CASE 
		WHEN CustomerID < 103 THEN 'Low ID'
        WHEN CustomerID <= 104 THEN 'Middle ID'
        ELSE 'High ID'
	END AS IDCategory
FROM Customer

# Task 12 — Order Amount Level

# Exercise 1
# Classify orders:
# Less than $200 → Basic
# $200–$300 → Standard
# Above $300 → Premium

SELECT 
	OrderID,
    TotalAmount,
    
	CASE 
		WHEN TotalAmount <= 200 THEN 'Basic'
        WHEN TotalAmount BETWEEN 200 AND 300 THEN 'Standard'
        ELSE 'Premium'
	END AS OrderLevel
FROM Orders

# Exercise 2 - Classify Orders:
# $150 or less → Low
# $150.01–$250 → Medium
# Above $250 → High

SELECT 
	OrderID,
    TotalAmount,
    
    CASE
		WHEN TotalAmount < 150 THEN 'Low'
        WHEN TotalAmount BETWEEN 150.01 AND 250 THEN 'Medium'
        ELSE 'High'
	END AS OrderLevel
FROM Orders

# Task 13 - Customer Name Group

# Exercise 1 - Classify customers:
# Name starts with J → J Name
# Name starts with S → S Name
# All others → Other Name

SELECT
    CustomerName,
    CASE
        WHEN CustomerName LIKE 'J%' THEN 'J Name'
        WHEN CustomerName LIKE 'S%' THEN 'S Name'
        ELSE 'Other Name'
    END AS CustomerCategory
FROM Customer;

# Exercise 2 - Use CASE to classify customers whose names end with:
# n → Ends N
# h → Ends H
# All others → Other Ending

SELECT
    CustomerName,
    CASE
        WHEN CustomerName LIKE '%n' THEN 'Ends N'
        WHEN CustomerName LIKE '%h' THEN 'Ends H'
        ELSE 'Other Ending'
    END AS CustomerCategory
FROM Customer;

# Task 14 — Order Date Category

# Exercise 1 - Classify orders:
# August 1 → Day 1
# August 2–3 → Days 2-3
# August 4–5 → Days 4-5
# August 6 or later → Day 6+

SELECT
    OrderID,
    OrderDate,
    CASE
        WHEN OrderDate = '2026-08-01' THEN 'Day 1'
        WHEN OrderDate BETWEEN '2026-08-02' AND '2026-08-03' THEN 'Days 2-3'
        WHEN OrderDate BETWEEN '2026-08-04' AND '2026-08-05' THEN 'Days 4-5'
        ELSE 'Day 6+'
    END AS DateCategory
FROM Orders;

# Exercise 2 - Classify orders:
# Before August 3 → Early
# August 3–5 → On Schedule
# After August 5 → Late

SELECT
    OrderID,
    OrderDate,
    CASE
        WHEN OrderDate < '2026-08-03' THEN 'Early'
        WHEN OrderDate BETWEEN '2026-08-03' AND '2026-08-05' THEN 'On Schedule'
        ELSE 'Late'
    END AS Status
FROM Orders;

# Task 15 — Order Priority

# Exercise 1 - Classify orders:
# $350 or more → Urgent
# $250–$349.99 → Important
# $200–$249.99 → Normal
# Less than $200 → Low

SELECT 
	OrderID,
    TotalAmount,
    
    CASE
		WHEN TotalAmount >= 350 THEN 'Urgent'
        WHEN TotalAmount BETWEEN 250 AND 349.99 THEN 'Important'
        WHEN TotalAmount BETWEEN 200 AND 249.99 THEN 'Normal'
        ELSE 'Low'
	END AS Priority
FROM Orders;

# Exercise 2 - Classify orders:
# $400 or more → VIP
# $300–$399.99 → Gold
# $200–$299.99 → Silver
# Less than $200 → Bronze

SELECT
	OrderID,
    TotalAmount,
    
    CASE
		WHEN TotalAmount >= 400 THEN 'VIP'
        WHEN TotalAmount BETWEEN 300 AND 399.99 THEN 'Gold'
        WHEN TotalAmount BETWEEN 200 AND 299.99 THEN 'Silver'
        ELSE 'Bronze'
	END AS CustomerLevel
FROM Orders;
