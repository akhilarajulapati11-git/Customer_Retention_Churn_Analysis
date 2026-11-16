USE customer_churn_db;


-- View 1: Active Customers
CREATE VIEW active_customers AS
SELECT
    customer_id,
    customer_name,
    gender,
    subscription_type,
    contract_type,
    monthly_charges,
    tenure_months
FROM customers
WHERE status = 'Active';


-- View 2: Churned Customers
CREATE VIEW churned_customers AS
SELECT
    customer_id,
    customer_name,
    gender,
    subscription_type,
    contract_type,
    monthly_charges,
    tenure_months
FROM customers
WHERE status = 'Churned';


-- View 3: Customer Churn Summary
CREATE VIEW customer_churn_summary AS
SELECT
    COUNT(*) AS total_customers,
    SUM(CASE WHEN status = 'Active' THEN 1 ELSE 0 END)
        AS active_customers,
    SUM(CASE WHEN status = 'Churned' THEN 1 ELSE 0 END)
        AS churned_customers,
    ROUND(
        SUM(CASE WHEN status = 'Churned' THEN 1 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS churn_rate
FROM customers;


-- View 4: High Risk Customers
CREATE VIEW high_risk_customers AS
SELECT
    customer_id,
    customer_name,
    tenure_months,
    monthly_charges,
    complaints,
    payment_status
FROM customers
WHERE tenure_months < 12
AND monthly_charges > 500
AND complaints > 0;


-- View 5: Churn by Subscription
CREATE VIEW churn_by_subscription AS
SELECT
    subscription_type,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN status = 'Churned' THEN 1 ELSE 0 END)
        AS churned_customers,
    ROUND(
        SUM(CASE WHEN status = 'Churned' THEN 1 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS churn_rate
FROM customers
GROUP BY subscription_type;

SELECT * FROM active_customers;

SELECT * FROM churned_customers;

SELECT * FROM customer_churn_summary;

SELECT * FROM high_risk_customers;

SELECT * FROM churn_by_subscription;