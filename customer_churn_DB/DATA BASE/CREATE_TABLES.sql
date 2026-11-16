CREATE DATABASE Customer_Churn_DB;
USE Customer_Churn_DB;
SHOW DATABASES;
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(50),
    registration_date DATE
);
CREATE TABLE Subscriptions (
    subscription_id INT PRIMARY KEY,
    customer_id INT,
    plan_name VARCHAR(30),
    monthly_fee DECIMAL(10,2),
    start_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (customer_id)
        REFERENCES Customers(customer_id)
);
CREATE TABLE Customer_Activity (
    activity_id INT PRIMARY KEY,
    customer_id INT,
    activity_date DATE,
    login_count INT,
    FOREIGN KEY (customer_id)
        REFERENCES Customers(customer_id)
);
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10,2),
    payment_date DATE,
    payment_status VARCHAR(20),
    FOREIGN KEY (customer_id)
        REFERENCES Customers(customer_id)
);
CREATE TABLE Churn_Records (
    churn_id INT PRIMARY KEY,
    customer_id INT,
    churn_date DATE,
    churn_reason VARCHAR(100),
    FOREIGN KEY (customer_id)
        REFERENCES Customers(customer_id)
);
SHOW TABLES;