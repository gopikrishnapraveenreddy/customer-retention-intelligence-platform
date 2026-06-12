CREATE DATABASE IF NOT EXISTS customer_churn_db;

USE customer_churn_db;

DROP TABLE IF EXISTS customer_churn;

CREATE TABLE customer_churn (
    customerid VARCHAR(50),
    gender VARCHAR(20),
    seniorcitizen INT,
    partner VARCHAR(10),
    dependents VARCHAR(10),
    tenure INT,
    phoneservice VARCHAR(10),
    multiplelines VARCHAR(50),
    internetservice VARCHAR(50),
    onlinesecurity VARCHAR(50),
    onlinebackup VARCHAR(50),
    deviceprotection VARCHAR(50),
    techsupport VARCHAR(50),
    streamingtv VARCHAR(50),
    streamingmovies VARCHAR(50),
    contract VARCHAR(50),
    paperlessbilling VARCHAR(10),
    paymentmethod VARCHAR(100),
    monthlycharges DECIMAL(10,2),
    totalcharges DECIMAL(10,2),
    churn VARCHAR(10),
    churn_flag INT,
    senior_citizen_label VARCHAR(50),
    tenure_group VARCHAR(50),
    monthly_charge_group VARCHAR(50)
);
