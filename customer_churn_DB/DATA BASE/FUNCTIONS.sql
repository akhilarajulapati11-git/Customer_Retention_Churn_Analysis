USE customer_churn_db;

-- 1. COUNT() - Total customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- 2. AVG() - Average monthly charges
SELECT AVG(monthly_charges) AS average_charges
FROM customers;

-- 3. SUM() - Total revenue from monthly charges
SELECT SUM(monthly_charges) AS total_monthly_revenue
FROM customers;

-- 4. MAX() - Highest monthly charge
SELECT MAX(monthly_charges) AS highest_charge
FROM customers;

-- 5. MIN() - Lowest monthly charge
SELECT MIN(monthly_charges) AS lowest_charge
FROM customers;