CREATE VIEW early_warning_customers AS
SELECT *
FROM telco_customers
WHERE churn_flag = 0
  AND churn_risk_level = 'High';

SELECT customerID, tenure, MonthlyCharges, churn_risk_score
FROM early_warning_customers
LIMIT 20;




