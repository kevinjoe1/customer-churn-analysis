--Overall churn rate
SELECT 
    COUNT(*) AS total_customers,
    SUM(churn_flag) AS total_churned,
    ROUND((SUM(churn_flag) * 100.0) / COUNT(*), 2) AS churn_rate_percent
FROM telco_customers;

--Churn by contract type
SELECT
    Contract,
    COUNT(*) AS total_customers,
    SUM(churn_flag) AS churned_customers,
    ROUND((SUM(churn_flag) * 100.0) / COUNT(*), 2) AS churn_rate_percent
FROM telco_customers
GROUP BY Contract
ORDER BY churn_rate_percent DESC;

--Churn by tenure group
SELECT
    tenure_group,
    COUNT(*) AS total_customers,
    SUM(churn_flag) AS churned_customers,
    ROUND((SUM(churn_flag) * 100.0) / COUNT(*), 2) AS churn_rate_percent
FROM telco_customers
GROUP BY tenure_group
ORDER BY churn_rate_percent DESC;

--Churn by Payment Method
SELECT
    PaymentMethod,
    COUNT(*) AS total_customers,
    SUM(churn_flag) AS churned_customers,
    ROUND((SUM(churn_flag) * 100.0) / COUNT(*), 2) AS churn_rate_percent
FROM telco_customers
GROUP BY PaymentMethod
ORDER BY churn_rate_percent DESC;

--Churn by Internet Service Type
SELECT
    InternetService,
    COUNT(*) AS total_customers,
    SUM(churn_flag) AS churned_customers,
    ROUND((SUM(churn_flag) * 100.0) / COUNT(*), 2) AS churn_rate_percent
FROM telco_customers
GROUP BY InternetService
ORDER BY churn_rate_percent DESC;

--Average Monthly Charges: churn vs non-churn
SELECT
    churn_flag,
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charges
FROM telco_customers
GROUP BY churn_flag;

PRAGMA table_info(telco_customers);

