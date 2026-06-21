-- decodelab 
use work;

-- 1. full data
select * from data;

-- 2. Count total orders
SELECT COUNT(*) AS TotalOrders
FROM data;

-- 3. Count distinct customers
SELECT COUNT(DISTINCT CustomerID) AS TotalCustomers
FROM data;

-- 4. Total revenue
SELECT SUM(TotalPrice) AS TotalRevenue
FROM data;

-- 5. Revenue by product
SELECT Product, SUM(TotalPrice) AS Revenue
FROM data
GROUP BY Product
ORDER BY Revenue DESC;

-- 6. Average order value
SELECT AVG(TotalPrice) AS AvgOrderValue
FROM data;

-- 7. Orders by referral source
SELECT ReferralSource, COUNT(*) AS NumOrders, SUM(TotalPrice) AS Revenue
FROM data
GROUP BY ReferralSource
ORDER BY Revenue DESC;

-- 8. Coupon usage frequency
SELECT CouponCode, COUNT(*) AS TimesUsed, SUM(TotalPrice) AS RevenueGenerated
FROM data
GROUP BY CouponCode
ORDER BY TimesUsed DESC;

-- 9. Payment method distribution
SELECT PaymentMethod, COUNT(*) AS NumOrders, SUM(TotalPrice) AS Revenue
FROM data
GROUP BY PaymentMethod;

-- 10. Order status breakdown
SELECT OrderStatus, COUNT(*) AS NumOrders, SUM(TotalPrice) AS Revenue
FROM data
GROUP BY OrderStatus;

-- 11. Monthly sales trend
SELECT DATE_FORMAT(Date, '%Y-%m') AS Month, SUM(TotalPrice) AS Revenue
FROM data
GROUP BY Month
ORDER BY Month;

-- 12. Top customers by spending
SELECT CustomerID, SUM(TotalPrice) AS TotalSpent
FROM data
GROUP BY CustomerID
ORDER BY TotalSpent DESC
LIMIT 10;
























