# 📊 Customer Churn Analysis & Early Warning System  
**SQL · Python · Power BI · Data Analysis Project**

---

## 🚀 Project Overview  
This project analyzes customer churn using telecom data and builds a 3-page Power BI dashboard along with a SQL-driven early warning system that identifies high-risk customers.

The goal is to help companies **reduce churn**, **understand churn drivers**, and **prioritize customers most likely to leave**.

---

## 🧰 Tools & Technologies  
- **Power BI** (Dashboards & Visuals)  
- **SQLite / SQL** (Views, data transformation)  
- **Python** (Initial few cleaning & calculations)  
- **Excel** (Exploration)  
- **GitHub** (Documentation & versioning)

---

## 📁 Project Structure  

```
customer-churn-analysis/
├── data/
│   ├── telco_customers.csv
│   └── early_warning_customers.csv
│
├── sql/
│   ├── create_view.sql
│   └── cleaning_queries.sql
│
├── powerbi/
│   └── Customer_Churn_Analysis.pbix
│
├── images/
│   ├── dashboard_page1.png
│   ├── dashboard_page2.png
│   └── dashboard_page3.png
│
└── README.md

```



---

# 📄 Dashboard Pages

## **📌 Page 1 — Overview**
- Total Churned Customers  
- Churn Rate  
- Total Active Customers  
- Average Monthly Charges  
- Churn by Contract Type  

![Dashboard Page 1](data/sql/powerbi/images/Screenshot%202025-11-19%20143553.png)
---

## **📌 Page 2 — Churn Drivers**
- Churn by Tenure Group  
- Churn by Internet Service  
- Churn by Payment Method  
- Monthly Charges by Churn Flag  

![Dashboard Page 3](data/sql/powerbi/images/Screenshot%202025-11-19%20143626.png)

---

## **📌 Page 3 — Early Warning System**
- High-Risk Customers Table  
- High-Risk by Tech Support  
- Churn Risk Score Distribution  

![Dashboard Page 2](data/sql/powerbi/images/Screenshot%202025-11-19%20143616.png)

---

# 🔍 Key Insights  
- **Month-to-month** contract users churn the most.  
- Customers **without Tech Support** are more likely to churn.  
- **Electronic Check** users show the highest churn rate.  
- Customers with **0–6 months tenure** are most vulnerable.  
- Early Warning System identified **4,383 high-risk customers**.

---

# 💼 Business Impact  
✔ Helps retention teams target the right customers.  
✔ Identifies root causes behind churn.  
✔ Improves contract upgrade and support strategies.  
✔ Highlights high-risk revenue segments.

---

# 👤 Created By  
**Kevin Johnson**  
Final Year BCA · Data Analyst  
**Power BI · SQL · Python**

---
