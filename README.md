# Customer Retention & Churn Analysis Using MySQL

## 1. Project Description

Customer Retention & Churn Analysis is a SQL-based project used to analyze customer information, subscription details, monthly charges, and customer churn.

The main purpose of this project is to identify customers who leave a service, understand customer behaviour, and analyze factors that affect customer retention.

This project uses MySQL queries to organize, retrieve, and analyze customer data.

## 2. Project Features

- Store and manage customer information.
- Maintain customer subscription details.
- Analyze active and churned customers.
- Calculate total and average monthly charges.
- Identify high-value customers.
- Retrieve customer information using JOIN operations.
- Analyze customer data using subqueries.
- Create views, stored procedures, and functions.
- Improve query performance using indexes.

## 3. Technologies Used

| Technology | Purpose |
|---|---|
| MySQL | Database management |
| MySQL Workbench | Writing and executing SQL queries |
| SQL | Data storage and analysis |
| ER Diagram | Database relationship design |

## 4. Database Structure

**Database Name:** `customer_churn_db`

### Tables

| Table Name | Description |
|---|---|
| customers | Stores customer details, charges, tenure, and status |
| subscriptions | Stores customer subscription information |

### Project Folder Structure

```text
Customer-Retention-Churn-Analysis/
│
├── database/
│   ├── 01_create_database.sql
│   ├── 02_create_tables.sql
│   ├── 03_insert_data.sql
│   ├── 04_queries.sql
│   ├── 05_views.sql
│   ├── 06_procedures.sql
│   ├── 07_functions.sql
│   ├── 08_triggers.sql
│   └── 09_indexes.sql
│
├── documentation/
│   ├── requirements.md
│   ├── database-design.md
│   └── er-diagram.md
│
└── README.md
```

## 5. Installation Steps

1. Download and install MySQL Server.
2. Install MySQL Workbench.
3. Open MySQL Workbench.
4. Connect to your MySQL server.
5. Open a new SQL query tab.
6. Execute the SQL files in the correct order.

## 6. How to Execute SQL Files

Execute the following files one by one in MySQL Workbench:

| Order | SQL File | Purpose |
|---|---|---|
| 1 | 01_create_database.sql | Creates the database |
| 2 | 02_create_tables.sql | Creates project tables |
| 3 | 03_insert_data.sql | Inserts customer data |
| 4 | 04_queries.sql | Performs data analysis |
| 5 | 05_views.sql | Creates reusable views |
| 6 | 06_procedures.sql | Creates stored procedures |
| 7 | 07_functions.sql | Uses SQL functions |
| 8 | 08_triggers.sql | Creates database triggers |
| 9 | 09_indexes.sql | Improves query performance |

**Execution process:**

- Open the required `.sql` file using MySQL Workbench.
- Click the lightning bolt (⚡) Execute button.
- Check the Output and Result Grid.
- Repeat the process for the next file.

## 7. Sample SQL Queries

### Query 1: Display Total Customers

```sql
SELECT COUNT(*) AS total_customers
FROM customers;
```

### Query 2: Find Average Monthly Charges

```sql
SELECT AVG(monthly_charges) AS average_charges
FROM customers;
```

### Query 3: Display Churned Customers

```sql
SELECT *
FROM customers
WHERE status = 'Churned';
```

### Query 4: Display Customer Subscription Details

```sql
SELECT
    c.customer_id,
    c.customer_name,
    s.subscription_type
FROM customers c
INNER JOIN subscriptions s
ON c.customer_id = s.customer_id;
```

### Query 5: Find Customers Paying Above Average Charges

```sql
SELECT customer_id, customer_name, monthly_charges
FROM customers
WHERE monthly_charges >
(
    SELECT AVG(monthly_charges)
    FROM customers
);
```

## 8. Future Enhancements

- Create interactive dashboards using Power BI.
- Identify important reasons behind customer churn.
- Analyze customer retention rates.
- Predict customers who may leave the service.
- Add more customer subscription categories.
- Generate monthly and yearly revenue reports.

## 9. Project Outcome

This project demonstrates practical knowledge of MySQL and SQL-based data analysis.

It helps understand customer behaviour, identify churned customers, analyze revenue, and generate useful insights from customer data.

**Project Name:** Customer Retention & Churn Analysis Using MySQL

**Domain:** Data Analytics

**Technology:** MySQL
