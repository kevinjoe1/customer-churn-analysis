DROP TABLE IF EXISTS telco_customers;

CREATE TABLE telco_customers (
    customerID        TEXT,
    gender            TEXT,
    SeniorCitizen     INTEGER,
    Partner           TEXT,
    Dependents        TEXT,
    tenure            INTEGER,
    PhoneService      TEXT,
    MultipleLines     TEXT,
    InternetService   TEXT,
    OnlineSecurity    TEXT,
    OnlineBackup      TEXT,
    DeviceProtection  TEXT,
    TechSupport       TEXT,
    StreamingTV       TEXT,
    StreamingMovies   TEXT,
    Contract          TEXT,
    PaperlessBilling  TEXT,
    PaymentMethod     TEXT,
    MonthlyCharges    REAL,
    TotalCharges      REAL,
    Churn             TEXT
);

SELECT COUNT(*) FROM telco_customers;

-- Create churn_flag column 
ALTER TABLE telco_customers
ADD COLUMN churn_flag INTEGER;

UPDATE telco_customers
SET churn_flag = CASE 
    WHEN Churn = 'Yes' THEN 1 
    ELSE 0 
END;

-- Create tenure_group column
ALTER TABLE telco_customers
ADD COLUMN tenure_group TEXT;

UPDATE telco_customers
SET tenure_group = CASE
    WHEN tenure < 6 THEN '0-6 months'
    WHEN tenure BETWEEN 6 AND 24 THEN '6-24 months'
    ELSE '24+ months'
END;

SELECT customerID, tenure, tenure_group, churn_flag, Churn
FROM telco_customers
LIMIT 10;

-- Create churn_risk_score
ALTER TABLE telco_customers
ADD COLUMN churn_risk_score INTEGER;

UPDATE telco_customers
SET churn_risk_score =
      (CASE WHEN Contract = 'Month-to-month' THEN 2 ELSE 0 END)
    + (CASE WHEN tenure < 6 THEN 2 ELSE 0 END)
    + (CASE WHEN MonthlyCharges > 80 THEN 1 ELSE 0 END)
    + (CASE WHEN TechSupport = 'No' THEN 1 ELSE 0 END)
    + (CASE WHEN InternetService = 'Fiber optic' THEN 1 ELSE 0 END);

-- Create churn_risk_level
ALTER TABLE telco_customers
ADD COLUMN churn_risk_level TEXT;

UPDATE telco_customers
SET churn_risk_level = CASE
    WHEN churn_risk_score >= 4 THEN 'High'
    WHEN churn_risk_score BETWEEN 2 AND 3 THEN 'Medium'
    ELSE 'Low'
END;

SELECT customerID, Contract, tenure, MonthlyCharges, TechSupport,
       churn_risk_score, churn_risk_level
FROM telco_customers
LIMIT 20;


