# Customer Churn Risk Analysis & Retention Strategy Dashboard

## Project Overview

This project analyzes telecom customer data to identify patterns associated with customer churn. The goal is to help business teams understand which customer segments are most likely to leave and develop targeted retention strategies.

I used Python to clean and prepare the data, SQL to explore churn patterns, and Tableau to design the final dashboard.

---

## Business Problem

Telecom companies lose revenue when customers cancel their services. Acquiring new customers is often more expensive than retaining existing ones, so identifying churn risk early is important for business growth.

This project answers the question:

**Which customer characteristics and service factors are associated with higher churn risk?**

The analysis focuses on churn trends by contract type, tenure, payment method, internet service, monthly charges, and customer demographics.

---

## Dataset

The dataset used is the IBM Telco Customer Churn dataset.

The dataset includes customer-level information such as:

- Customer ID
- Gender
- Senior citizen status
- Partner and dependent status
- Tenure
- Phone service
- Internet service
- Contract type
- Payment method
- Monthly charges
- Total charges
- Churn status

After cleaning, the analysis-ready dataset contains:

| Metric | Value |
| :----- | ----: |
| Valid Customer Records | 7,032 |
| Churned Customers | 1,869 |
| Retained Customers | 5,163 |
| Overall Churn Rate | 26.58% |
| Average Monthly Charges | $64.80 |

---

## Tools Used

- Python
- pandas
- SQL
- Tableau
- Excel/CSV
- GitHub

---

## Data Cleaning Steps

The raw dataset was cleaned and prepared before dashboard development.

Main cleaning steps included:

- Standardized column names into readable snake_case format.
- Converted `totalcharges` from text to numeric format.
- Removed records with missing total charges.
- Removed duplicate records.
- Created a numeric churn flag for churn rate calculations.
- Created tenure groups such as 0-12 Months, 13-24 Months, 25-48 Months, and 49+ Months.
- Created monthly charge groups to compare churn across customer billing levels.
- Exported an analysis-ready CSV for SQL analysis and Tableau dashboarding.

---

## Dashboard Overview

The Tableau dashboard should include:

- KPI card for total customers
- KPI card for churned customers
- KPI card for churn rate
- KPI card for average monthly charges
- Donut chart for churn vs retained customers
- Bar chart for churn by contract type
- Bar chart for churn by internet service
- Bar chart for churn by payment method
- Bar chart for churn by tenure group
- Column chart for average monthly charges by churn status
- Interactive filters for gender, contract type, internet service, and payment method

---

## Dashboard Screenshot

Add your Tableau dashboard screenshot here after creating it:

`dashboard_screenshot.png`

---

## Key Insights

- The cleaned dataset contains **7,032 valid customer records**.
- Around **1,869 customers churned**, resulting in an overall churn rate of **26.58%**.
- Customers on **Month-to-month contracts** show the highest churn rate at **42.71%**.
- Customers using **Fiber optic internet service** show the highest churn rate at **41.89%**.
- Customers using **Electronic check** show the highest churn rate at **45.29%**.
- Customers in the **0-12 Months tenure group** show the highest churn rate at **47.68%**.
- Churned customers have an average monthly charge of **$74.44**, compared with **$61.31** for retained customers.

---

## Business Recommendations

- Encourage month-to-month customers to switch to annual or two-year contracts through loyalty discounts.
- Create onboarding and engagement campaigns for customers in their first year.
- Review pricing and service quality for high-charge customers who may be more likely to churn.
- Investigate why fiber optic customers show higher churn and improve service experience where needed.
- Encourage automatic payment methods and reduce reliance on electronic checks.
- Build retention campaigns focused on high-risk customer segments identified through churn patterns.

---

## Project Files

| File | Description |
| :--- | :---------- |
| README.md | Project summary, process, insights, and recommendations |
| customer_churn_cleaned.csv | Cleaned dataset used for analysis and Tableau dashboarding |
| python_data_cleaning.py | Python script used to clean and prepare the dataset |
| create_tables.sql | SQL script for creating the customer churn table |
| data_analysis_queries.sql | SQL queries used to analyze churn patterns |
| data_dictionary.md | Explanation of important dataset columns |
| tableau_dashboard_requirements.md | Dashboard layout and chart requirements |
| insights.md | Detailed insights from the analysis |

---

## What I Learned

Through this project, I practiced cleaning customer data, creating derived fields, writing SQL queries for churn analysis, and preparing a dataset for Tableau dashboarding.

I also learned how churn can be analyzed across contract type, tenure, payment method, service type, and billing behavior to support customer retention strategies.

---

## Project Outcome

The final analysis identifies key churn risk patterns and provides business recommendations that telecom companies can use to improve customer retention and reduce revenue loss.
