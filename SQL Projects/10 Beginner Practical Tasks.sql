# Task 1 - Display the customer's name, city, and a city classification.

# Exercise 1 - Display each customer and classify the city as:
# Dallas → North Texas
# Houston → Southeast Texas
# Austin → Central Texas
# Chicago → Illinois
# Phoenix → Arizona

SELECT
    CustomerName,
    City,
    CASE
        WHEN City = 'Dallas' THEN 'North Texas'
        WHEN City = 'Houston' THEN 'Southeast Texas'
        WHEN City = 'Austin' THEN 'Central Texas'
        WHEN City = 'Chicago' THEN 'Illinois'
        WHEN City = 'Phoenix' THEN 'Arizona'
        ELSE 'Other'
    END AS CityType
FROM Customer;

# Exercise 2 - Classify each customer:
# Dallas → Group A
# Houston → Group B
# Austin → Group C
# Chicago → Group D
# Phoenix → Group E

SELECT
    CustomerName,
    City,
    CASE
        WHEN City = 'Dallas' THEN 'Group A'
        WHEN City = 'Houston' THEN 'Group B'
        WHEN City = 'Austin' THEN 'Group C'
        WHEN City = 'Chicago' THEN 'Group D'
        WHEN City = 'Phoenix' THEN 'Group E'
        ELSE 'Other'
    END AS CityType
FROM Customer;

# Task 2 - Classify every order according to its amount.

# Exercise 1 :
# Classify orders as:
# $300 or more → Large
# Less than $300 → Regular

SELECT
    OrderID,
    TotalAmount,
    CASE
        WHEN TotalAmount >= 300 THEN 'Large'
        ELSE 'Regular'
    END AS OrderCategory
FROM Orders;

# Exercise 2 : 
# Classify orders as:
# $400 or more → Premium
# $200–$399.99 → Standard
# Less than $200 → Basic

SELECT
    OrderID,
    TotalAmount,
    CASE
        WHEN TotalAmount >= 400 THEN 'Premium'
		WHEN TotalAmount BETWEEN 200 AND 399.99 THEN 'Standard'
        ELSE 'Basic'
    END AS OrderCategory
FROM Orders;

# Task 3 - The company wants to identify the discount level customers should receive based on their order amount.

# Exercise 1
# Classify orders:
# $350 or more → 10%
# $200–$349.99 → 5%
# Less than $200 → No Discount

SELECT
    OrderID,
    TotalAmount,
    CASE
        WHEN TotalAmount >= 350 THEN '10%'
        WHEN TotalAmount BETWEEN 200 AND 349.99 THEN '10%'
        ELSE 'No Discount'
    END AS DiscountLevel
FROM Orders;

# Exercise 2
# Classify orders:
# $400 or more → VIP Discount
# $300–$399.99 → Gold Discount
# $200–$299.99 → Silver Discount
# Less than $200 → No Discount

SELECT
    OrderID,
    TotalAmount,
    CASE
        WHEN TotalAmount >= 400 THEN 'VIP Discount'
        WHEN TotalAmount BETWEEN 300 AND 349.99 THEN 'Gold Discount'
        WHEN TotalAmount BETWEEN 200 AND 299.99 THEN 'Silver Discount'
        ELSE 'No Discount'
    END AS DiscountLevel
FROM Orders;

# Task 4 - Classify customers according to whether they are located in Texas.

# Exercise 1:
# Classify:
# Dallas, Houston, Austin → Texas
# Chicago, Phoenix → Outside Texas

SELECT
    CustomerName,
    City,
    CASE
        WHEN City IN ('Dallas', 'Houston', 'Austin')
            THEN 'Texas'
        ELSE 'Outside Texas'
    END AS LocationStatus
FROM Customer;

# Exercise 2:
# Classify:
# Dallas and Houston → North/South Texas
# Austin → Central Texas
# Chicago and Phoenix → Other State

SELECT
    CustomerName,
    City,
    CASE
        WHEN City IN ('Dallas', 'Houston')
            THEN 'North/South Texas'
		WHEN City IN ('Austin')
			THEN 'Central Texas'
        ELSE 'Other State'
    END AS LocationStatus
FROM Customer;


# Task 5 - Classify customers based on the first letter of their name.

# Exercise 1: Classify customers:
# Names beginning with J → Starts J
# Names beginning with M → Starts M
# All others → Other

SELECT
    CustomerName,
    CASE
        WHEN CustomerName LIKE 'J%' THEN 'J Customer'
        WHEN CustomerName LIKE 'M%' THEN 'M Customer'
        ELSE 'Other'
    END AS CustomerCategory
FROM Customer;

# Exercise 2: Classify customers:
# Names ending with n → Ends N
# All others → Does Not End N

SELECT
    CustomerName,
    CASE
        WHEN CustomerName LIKE 'n%' THEN 'Ends N'
        ELSE 'Does Not End N'
    END AS CustomerCategory
FROM Customer;

# Task 6 - Classify orders according to their order date. 

# Exercise 1:
# Classify orders:
# August 1–3 → First Period
# August 4–6 → Second Period

SELECT
    OrderID,
    OrderDate,
    CASE
        WHEN OrderDate <= '2026-08-03' THEN 'First Period'
        ELSE 'Second Period'
    END AS OrderTiming
FROM Orders;

# Exercise 2:
# Classify:
# Before August 5 → Before Cutoff
# August 5 or later → After Cutoff

SELECT
    OrderID,
    OrderDate,
    CASE
        WHEN OrderDate <= '2026-08-04' THEN 'Before Cutoff'
        ELSE 'After Cutoff'
    END AS OrderTiming
FROM Orders;

# Task 7 - Classify each order by size.

# Exercise 1 - Classify:
# Classify:
# Below $200 → Basic
# $200–$350 → Standard
# Above $350 → Premium

SELECT
    OrderID,
    TotalAmount,
    CASE
        WHEN TotalAmount < 200 THEN 'Basic'
        WHEN TotalAmount <= 350 THEN 'Standard'
        WHEN TotalAmount > 350 THEN 'Premium'
        ELSE 'No Value'
    END AS OrderSize
FROM Orders;

# Exercise 2 - Classify:
# $150 or less → Low
# $151–$300 → Medium
# Above $300 → High

SELECT
    OrderID,
    TotalAmount,
    CASE
        WHEN TotalAmount <= 150.25 THEN 'Low'
        WHEN TotalAmount BETWEEN 151 AND 300 THEN 'Medium'
        WHEN TotalAmount > 300 THEN 'High'
        ELSE 'No Size'
    END AS OrderSize
FROM Orders;

# Task 8 - Classify customers based on their CustomerID.

# Exercise 1: Classify
-- ====================
# CustomerID 101 → First
# CustomerID 102 → Second
# CustomerID 103 → Third
# CustomerID 104 → Fourth
# CustomerID 105 → Fifth

SELECT
    CustomerID,
    CustomerName,
    CASE
        WHEN CustomerID = 101 THEN 'First'
        WHEN CustomerID = 102 THEN 'Second'
        WHEN CustomerID = 103 THEN 'Third'
        WHEN CustomerID = 104 THEN 'Fourth'
        ELSE 'Fifth'
    END AS CustomerGroup
FROM Customer;

# Exercise 2: Classify
-- ====================
# CustomerID below 103 → Lower ID
# CustomerID 103 or higher → Higher ID

SELECT
    CustomerID,
    CustomerName,
    CASE
        WHEN CustomerID <= 103 THEN 'Lower ID'
        ELSE 'Higher ID'
    END AS CustomerGroup
FROM Customer;

# Task 9 - Classify orders according to their OrderID.

# Exercise 1: Classify
-- ====================
# 1001 → Batch 1
# 1002 → Batch 1
# 1003 → Batch 2
# 1004 → Batch 2
# 1005 → Batch 3

SELECT
    OrderID,
    CASE
        WHEN OrderID <= 1002 THEN 'Batch 1'
        WHEN OrderID <= 1004 THEN 'Batch 2'
        ELSE 'Batch 3'
    END AS OrderPosition
FROM Orders;

# Exercise 2: Classify
-- ====================
# OrderID less than 1003 → Old
# OrderID 1003 or higher → New

SELECT
    OrderID,
    CASE
        WHEN OrderID <= 1002 THEN 'Old'
        ELSE 'New'
    END AS OrderPosition
FROM Orders;

# Task 10 - The company wants to identify which orders need management attention.

# Exercise 1: Classify orders
-- ===========================
# $350 or more → Manager
# $250–$349.99 → Supervisor
# Less than $250 → Employee

SELECT
    OrderID,
    TotalAmount,
    CASE
        WHEN TotalAmount >= 350 THEN 'Manager'
        WHEN TotalAmount BETWEEN 250 AND 349.99 THEN 'Supervisor'
        ELSE 'Employee'
    END AS ReviewStatus
FROM Orders;

# Exercise 2: Classify orders
-- ===========================
# $400 or more → Critical
# $300–$399.99 → Important
# $200–$299.99 → Normal
# Below $200 → Low

SELECT
    OrderID,
    TotalAmount,
    CASE
        WHEN TotalAmount >= 400 THEN 'Critical'
        WHEN TotalAmount BETWEEN 300 AND 399.99 THEN 'Important'
        WHEN TotalAmount BETWEEN 200 AND 299.99 THEN 'Normal'
        ELSE 'Low'
    END AS ReviewStatus
FROM Orders;





