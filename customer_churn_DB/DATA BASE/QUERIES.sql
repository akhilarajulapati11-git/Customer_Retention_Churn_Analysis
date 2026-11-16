USE customer_churn_db;


-- 1. Display all customers
SELECT *
FROM customers;


-- 2. Display active customers
SELECT *
FROM customers
WHERE status = 'Active';


-- 3. Display churned customers
SELECT *
FROM customers
WHERE status = 'Churned';


-- 4. Find customers with high monthly charges
SELECT
    customer_id,
    customer_name,
    monthly_charges
FROM customers
WHERE monthly_charges > 500;


-- 5. Find customers with complaints
SELECT
    customer_id,
    customer_name,
    complaints
FROM customers
WHERE complaints > 0;


-- 6. Find customers with short tenure
SELECT
    customer_id,
    customer_name,
    tenure_months
FROM customers
WHERE tenure_months < 12;


USE customer_churn_db;


-- 1. INNER JOIN
-- Display customer and subscription details

SELECT
    c.customer_id,
    c.customer_name,
    s.subscription_type
FROM customers c
INNER JOIN subscriptions s
ON c.customer_id = s.customer_id;


-- 2. LEFT JOIN
-- Display all customers and their subscription details

SELECT
    c.customer_id,
    c.customer_name,
    s.subscription_type
FROM customers c
LEFT JOIN subscriptions s
ON c.customer_id = s.customer_id;


-- 3. SUBQUERY
-- Find customers whose charges are above average

SELECT
    customer_id,
    customer_name,
    monthly_charges
FROM customers
WHERE monthly_charges >
(
    SELECT AVG(monthly_charges)
    FROM customers
);


-- 4. SUBQUERY
-- Find customers with the highest monthly charge

SELECT
    customer_id,
    customer_name,
    monthly_charges
FROM customers
WHERE monthly_charges =
(
    SELECT MAX(monthly_charges)
    FROM customers
);


-- 5. SUBQUERY
-- Find customers whose tenure is above average

SELECT
    customer_id,
    customer_name,
    tenure_months
FROM customers
WHERE tenure_months >
(
    SELECT AVG(tenure_months)
    FROM customers
);


-- 6. JOIN + WHERE
-- Display details of churned customers with their subscription

SELECT
    c.customer_id,
    c.customer_name,
    c.status,
    s.subscription_type
FROM customers c
INNER JOIN subscriptions s
ON c.customer_id = s.customer_id
WHERE c.status = 'Churned';
