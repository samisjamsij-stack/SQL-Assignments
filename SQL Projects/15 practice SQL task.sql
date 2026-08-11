# Task 1 - Display All Customers
USE inventory;
SELECT * 
FROM customer;

# 3 Exercises
# Display all records from the Orders table.
SELECT *
FROM orders;

# Display all records from the Customer table.
SELECT * 
FROM customer;

# Display all records from both tables using separate SELCET statements. 
SELECT *
FROM orders ;
SELECT *
FROM customer ;

# Task 2 - Display only the customer's name and city.
# SELECT CustomerName, City
# FROM Customer;

# 3 Exercises
# Display only CustomerID and CustomerName.
SELECT CustomerID, CustomerName
FROM Customer;

# Display only OrderID and TotalAmount.
SELECT OrderID, TotalAmount
FROM Orders;

# Display only OrderDate and TotalAmount.
SELECT OrderDate, TotalAmount
FROM Orders;

# Task 3 - Display customer names using the column heading Name.
# SELECT CustomerName AS Name
# FROM Customer;

# 3 Exercise
# Display CustomerName as Customer.
SELECT CustomerName AS Name
FROM Customer;

# Display City as CustomerCity.
SELECT City AS Name
FROM Customer;

# Display TotalAmount as OrderTotal.
# SELECT TotalAmount AS Name
# FROM Orders;

# Task 4 - Find all customers who live in Dallas.
# SELECT *
# FROM Customer
# WHERE City = 'Dallas';

# 3 Exercise
# Find customers who live in Houston.
SELECT *
FROM Customer
WHERE City = 'Houston';

# Find customers who live in Austin.
SELECT *
FROM Customer
WHERE City = 'Austin';

# Find customers who live in Chicago
SELECT *
FROM Customer
WHERE City = 'Chicago';

# Task 5 - Find orders greater than $200.
# SELECT *
# FROM Orders
# WHERE TotalAmount > 200;

# 3 Exercises
# Find orders greater than $300.
SELECT *
FROM Orders
WHERE TotalAmount > 300;

# Find orders less than $300.
SELECT *
FROM Orders
WHERE TotalAmount < 300;

# Find orders greater than $400.
SELECT *
FROM Orders
WHERE TotalAmount > 400;

# Task 6 - Find orders greater than $200 and less than $400.
#SELECT *
# FROM Orders
# WHERE TotalAmount > 200
# AND TotalAmount < 400;

# 3 Exercises
# Find orders greater than $150 and less than $350.
SELECT *
FROM Orders
WHERE TotalAmount > 150
AND TotalAmount < 350;

# Find orders greater than $200 and less than $450.
SELECT *
FROM Orders
WHERE TotalAmount > 200
AND TotalAmount < 450;

# Find orders greater than $300 and less than $500.
SELECT *
FROM Orders
WHERE TotalAmount > 300
AND TotalAmount < 500;

# Task 7 - Find customers who live in Dallas or Houston.
# SELECT *
# FROM Customer
# WHERE City = 'Dallas'
# OR City = 'Houston';

# 3 Exercises
# Find customers from Austin or Chicago.
SELECT *
FROM Customer
WHERE City = 'Austin'
OR City = 'Chicago';

# Find customers from Houston or Phoenix.
SELECT *
FROM Customer
WHERE City = 'Houston'
OR City = 'Phoenix';

# Find customers from Dallas or Austin.
SELECT *
FROM Customer
WHERE City = 'Dallas'
OR City = 'Austin';

# Task 8 - Find orders between $200 and $400.
# SELECT *
# FROM Orders
# WHERE TotalAmount BETWEEN 200 AND 400;

# 3 Exercises
# Find orders between $100 and $250.
SELECT *
FROM Orders
WHERE TotalAmount BETWEEN 100 AND 250;

# Find orders between $150 and $350.
SELECT *
FROM Orders
WHERE TotalAmount BETWEEN 150 AND 350;

# Find orders between $300 and $500.
SELECT *
FROM Orders
WHERE TotalAmount BETWEEN 300 AND 500;

# Task 9 - Find customers who live in Dallas, Austin, or Phoenix.
# SELECT *
# FROM Customer
# WHERE City IN ('Dallas', 'Austin', 'Phoenix');

# 3 Exercises 
# Find customers from Dallas and Houston using IN.
SELECT *
FROM Customer
WHERE City IN ('Dallas', 'Houston');

# Find customers from Austin, Chicago, and Phoenix.
SELECT *
FROM Customer
WHERE City IN ('Austin', 'Chicago', 'Phoenix');

# Find customers from Houston, Chicago, and Dallas.
SELECT *
FROM Customer
WHERE City IN ('Houston', 'Chicago', 'Dallas');

# Task 10 - Find customers whose names begin with J.
# SELECT *
# FROM Customer
# WHERE CustomerName LIKE 'J%';

# 3 Exercises
# Find customers whose names begin with M.
SELECT *
FROM Customer
WHERE CustomerName LIKE 'M%';

# Find customers whose names begin with D.
SELECT *
FROM Customer
WHERE CustomerName LIKE 'D%';

# Find customers whose names end with n.
SELECT *
FROM Customer
WHERE CustomerName LIKE 'n%';

# Task 11 - Display customers alphabetically by name.
# Solution 
# SELECT *
# FROM Customer
# ORDER BY CustomerName ASC;

# 3 Exercises
# Sort customers by name from A to Z.
SELECT *
FROM Customer
ORDER BY CustomerName ASC;

# Sort customers by name from Z to A.
SELECT *
FROM Customer
ORDER BY CustomerName DESC;

# Sort customers by CustomerID from highest to lowest.
SELECT *
FROM Customer
ORDER BY CustomerID DESC;

# Task 12 - Display orders from the highest amount to the lowest amount.
# SELECT *
# FROM Orders
# ORDER BY TotalAmount DESC;

# 3 Exercises
# Sort orders from lowest amount to highest.
SELECT *
FROM Orders
ORDER BY OrderID ASC;

# Sort orders from highest amount to lowest.
SELECT *
FROM Orders
ORDER BY OrderID DESC;

# Sort orders by OrderDate from oldest to newest.
SELECT *
FROM Orders
ORDER BY OrderDate ASC;

# Task 13 - Display each city only once.
# SELECT DISTINCT City
# FROM Customer;

# 3 Exercises

# Display unique customer cities.

# Display unique CustomerID values from Orders.
SELECT DISTINCT CustomerID
FROM Orders;

# Display unique order dates from Orders.
SELECT DISTINCT OrderDate
FROM Orders;

# Task 14 - Display the customer name, order ID, and order amount.
# SELECT
#    Customer.CustomerName,
#    Orders.OrderID,
#    Orders.TotalAmount
# FROM Customer
# INNER JOIN Orders
#    ON Customer.CustomerID = Orders.CustomerID;

# 3 Exercises

# Display customer name and order date.
SELECT
    Customer.CustomerName,
    Orders.OrderDate
FROM Customer
INNER JOIN Orders
    ON Customer.CustomerID = Orders.CustomerID;

# Display customer name and order amount.
SELECT
    Customer.CustomerName,
    Orders.TotalAmount
FROM Customer
INNER JOIN Orders
    ON Customer.CustomerID = Orders.CustomerID;

# Display customer name, city, order ID, and order amount.
SELECT
    Customer.CustomerName,
    Customer.City,
    Orders.OrderID,
    Orders.TotalAmount
FROM Customer
INNER JOIN Orders
    ON Customer.CustomerID = Orders.CustomerID;
    
# Task 15 - Display the order amount and calculate a 10% discount.
-- =========================
# Solution Code

# SELECT
#    OrderID,
#    TotalAmount,
#    TotalAmount * 0.10 AS Discount,
#    TotalAmount - (TotalAmount * 0.10) AS FinalAmount
# FROM Orders;

# 3 Exercises
-- ==========================

# Calculate a 5% discount for every order.
SELECT
    OrderID,
    TotalAmount,
    TotalAmount * 0.05 AS Discount,
    TotalAmount - (TotalAmount * 0.05) AS FinalAmount
FROM Orders;

# Calculate a 10% tax for every order.
SELECT
    OrderID,
    TotalAmount,
    TotalAmount * 0.10 AS Discount,
    TotalAmount - (TotalAmount * 0.10) AS FinalAmount
FROM Orders;

# Calculate the final price after adding 8% tax.
SELECT
    OrderID,
    TotalAmount,
    TotalAmount * 0.08 AS Discount,
    TotalAmount + (TotalAmount * 0.08) AS FinalAmount
FROM Orders;