USE customer_churn_db;

DELIMITER $$


-- Procedure 1: Get all customers
CREATE PROCEDURE get_all_customers()
BEGIN
    SELECT *
    FROM customers;
END $$


-- Procedure 2: Get active customers
CREATE PROCEDURE get_active_customers()
BEGIN
    SELECT *
    FROM customers
    WHERE status = 'Active';
END $$


-- Procedure 3: Get churned customers
CREATE PROCEDURE get_churned_customers()
BEGIN
    SELECT *
    FROM customers
    WHERE status = 'Churned';
END $$


-- Procedure 4: Get customers by subscription
CREATE PROCEDURE get_customers_by_subscription(
    IN subscription_name VARCHAR(50)
)
BEGIN
    SELECT *
    FROM customers
    WHERE subscription_type = subscription_name;
END $$


-- Procedure 5: Get high-risk customers
CREATE PROCEDURE get_high_risk_customers()
BEGIN
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
END $$


DELIMITER ;


CALL get_all_customers();

CALL get_active_customers();

CALL get_churned_customers();

CALL get_customers_by_subscription('Premium');

CALL get_high_risk_customers();