-- Total Customers
SELECT COUNT(*) AS total_customers
FROM customer_churn;

-- Churned Customers
SELECT COUNT(*) AS churned_customers
FROM customer_churn
WHERE churn = 'Yes';

-- Overall Churn Rate
SELECT
ROUND(
    SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
    2
) AS churn_rate
FROM customer_churn;

-- Churn by Contract Type
SELECT
contract,
COUNT(*) AS total_customers,
SUM(churn_flag) AS churned_customers,
ROUND(SUM(churn_flag) * 100.0 / COUNT(*), 2) AS churn_rate
FROM customer_churn
GROUP BY contract
ORDER BY churn_rate DESC;

-- Churn by Internet Service
SELECT
internetservice,
COUNT(*) AS total_customers,
SUM(churn_flag) AS churned_customers,
ROUND(SUM(churn_flag) * 100.0 / COUNT(*), 2) AS churn_rate
FROM customer_churn
GROUP BY internetservice
ORDER BY churn_rate DESC;

-- Churn by Payment Method
SELECT
paymentmethod,
COUNT(*) AS total_customers,
SUM(churn_flag) AS churned_customers,
ROUND(SUM(churn_flag) * 100.0 / COUNT(*), 2) AS churn_rate
FROM customer_churn
GROUP BY paymentmethod
ORDER BY churn_rate DESC;

-- Churn by Tenure Group
SELECT
tenure_group,
COUNT(*) AS total_customers,
SUM(churn_flag) AS churned_customers,
ROUND(SUM(churn_flag) * 100.0 / COUNT(*), 2) AS churn_rate
FROM customer_churn
GROUP BY tenure_group
ORDER BY churn_rate DESC;

-- Average Monthly Charges by Churn Status
SELECT
churn,
ROUND(AVG(monthlycharges), 2) AS avg_monthly_charges,
ROUND(AVG(totalcharges), 2) AS avg_total_charges
FROM customer_churn
GROUP BY churn;
