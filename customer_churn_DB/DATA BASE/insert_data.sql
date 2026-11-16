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

USE Customer_Churn_DB;
INSERT INTO Customers
(customer_id, customer_name, email, city, registration_date)
VALUES
(1, 'Aarav', 'aarav@gmail.com', 'Hyderabad', '2026-01-10'),
(2, 'Priya', 'priya@gmail.com', 'Vizag', '2026-01-15'),
(3, 'Rahul', 'rahul@gmail.com', 'Hyderabad', '2026-02-01'),
(4, 'Sneha', 'sneha@gmail.com', 'Vijayawada', '2026-02-05'),
(5, 'Kiran', 'kiran@gmail.com', 'Chennai', '2026-02-10'),
(6, 'Ananya', 'ananya@gmail.com', 'Hyderabad', '2026-02-15'),
(7, 'Arjun', 'arjun@gmail.com', 'Vizag', '2026-03-01'),
(8, 'Divya', 'divya@gmail.com', 'Bangalore', '2026-03-05'),
(9, 'Rohit', 'rohit@gmail.com', 'Hyderabad', '2026-03-10'),
(10, 'Meera', 'meera@gmail.com', 'Chennai', '2026-03-15'),
(11, 'Varun', 'varun@gmail.com', 'Vizag', '2026-04-01'),
(12, 'Pooja', 'pooja@gmail.com', 'Hyderabad', '2026-04-05'),
(13, 'Nikhil', 'nikhil@gmail.com', 'Bangalore', '2026-04-10'),
(14, 'Kavya', 'kavya@gmail.com', 'Vijayawada', '2026-04-15'),
(15, 'Manoj', 'manoj@gmail.com', 'Hyderabad', '2026-04-20');

INSERT INTO Subscriptions
(subscription_id, customer_id, plan_name, monthly_fee, start_date, status)
VALUES
(101, 1, 'Basic', 299.00, '2026-01-10', 'Active'),
(102, 2, 'Premium', 699.00, '2026-01-15', 'Cancelled'),
(103, 3, 'Standard', 499.00, '2026-02-01', 'Active'),
(104, 4, 'Basic', 299.00, '2026-02-05', 'Cancelled'),
(105, 5, 'Premium', 699.00, '2026-02-10', 'Active'),
(106, 6, 'Standard', 499.00, '2026-02-15', 'Active'),
(107, 7, 'Basic', 299.00, '2026-03-01', 'Cancelled'),
(108, 8, 'Premium', 699.00, '2026-03-05', 'Active'),
(109, 9, 'Standard', 499.00, '2026-03-10', 'Active'),
(110, 10, 'Basic', 299.00, '2026-03-15', 'Cancelled'),
(111, 11, 'Premium', 699.00, '2026-04-01', 'Active'),
(112, 12, 'Standard', 499.00, '2026-04-05', 'Active'),
(113, 13, 'Basic', 299.00, '2026-04-10', 'Cancelled'),
(114, 14, 'Premium', 699.00, '2026-04-15', 'Active'),
(115, 15, 'Standard', 499.00, '2026-04-20', 'Active');

INSERT INTO Customer_Activity
(activity_id, customer_id, activity_date, login_count)
VALUES
(1001, 1, '2026-05-01', 25),
(1002, 2, '2026-05-01', 5),
(1003, 3, '2026-05-01', 20),
(1004, 4, '2026-05-01', 3),
(1005, 5, '2026-05-01', 28),
(1006, 6, '2026-05-01', 18),
(1007, 7, '2026-05-01', 2),
(1008, 8, '2026-05-01', 30),
(1009, 9, '2026-05-01', 22),
(1010, 10, '2026-05-01', 4),
(1011, 11, '2026-05-01', 27),
(1012, 12, '2026-05-01', 19),
(1013, 13, '2026-05-01', 1),
(1014, 14, '2026-05-01', 24),
(1015, 15, '2026-05-01', 21);

INSERT INTO Payments
(payment_id, customer_id, amount, payment_date, payment_status)
VALUES
(2001, 1, 299.00, '2026-05-01', 'Successful'),
(2002, 2, 699.00, '2026-04-15', 'Failed'),
(2003, 3, 499.00, '2026-05-01', 'Successful'),
(2004, 4, 299.00, '2026-03-05', 'Failed'),
(2005, 5, 699.00, '2026-05-01', 'Successful'),
(2006, 6, 499.00, '2026-05-01', 'Successful'),
(2007, 7, 299.00, '2026-03-20', 'Failed'),
(2008, 8, 699.00, '2026-05-01', 'Successful'),
(2009, 9, 499.00, '2026-05-01', 'Successful'),
(2010, 10, 299.00, '2026-04-15', 'Failed'),
(2011, 11, 699.00, '2026-05-01', 'Successful'),
(2012, 12, 499.00, '2026-05-01', 'Successful'),
(2013, 13, 299.00, '2026-04-20', 'Failed'),
(2014, 14, 699.00, '2026-05-01', 'Successful'),
(2015, 15, 499.00, '2026-05-01', 'Successful');

INSERT INTO Churn_Records
(churn_id, customer_id, churn_date, churn_reason)
VALUES
(301, 2, '2026-04-20', 'High subscription cost'),
(302, 4, '2026-03-15', 'Poor service experience'),
(303, 7, '2026-03-25', 'Not using the service'),
(304, 10, '2026-04-20', 'Payment issues'),
(305, 13, '2026-04-25', 'Better competitor offer');

SELECT * FROM Customers;
SELECT * FROM Subscriptions;
SELECT * FROM Customer_Activity;
SELECT * FROM Payments;
SELECT * FROM Churn_Records;