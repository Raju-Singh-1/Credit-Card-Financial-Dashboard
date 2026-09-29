# Credit-Card-Financial-Dashboard
An end-to-end data analytics project combining **MySQL** for Exploratory Data Analysis (EDA) and **Power BI** for interactive business intelligence reporting. This project processes financial transactions and customer demographic data to surface insights into revenue trends, card tier performance, and demographic spending patterns.

## 📌 Executive Summary
* **Total Revenue:** $55.4M
* **Total Interest Earned:** $7.9M
* **Total Transaction Volume:** $45M (657K Transactions)
* **Total Income Analyzed:** $577M

---

## 🛠️ Tech Stack & Tools
* **Database Engine:** MySQL Workbench (Data Extraction, Cleaning, Grouping & EDA)
* **Business Intelligence:** Power BI Desktop (Data Modeling, DAX Measures, Time Intelligence, Visuals)
* **Data Sources:** Credit Card Transaction Dataset & Customer Demographics Dataset

---

## 📊 Key Dashboards & Features

### 1. Credit Card Transaction Report
Focuses on financial metrics, revenue streams, card tiers, and spending behavior.
* **KPI Metrics:** Total Revenue, Interest Earned, Transaction Amount, and Transaction Count.
* **Card Tier Breakdown:** Analyzes revenue, interest, and annual fees across Blue, Silver, Gold, and Platinum cards (Blue category drives the majority of revenue).
* **Expenditure & Channel Trends:** Tracks spend across Bills, Entertainment, Fuel, Grocery, Food, and Travel, alongside transaction channels (Swipe: $35M, Chip: $17M, Online: $3M).
* **Customer Cost Analysis:** Evaluates customer acquisition costs across card tiers.
<img width="1039" height="600" alt="Screenshot 2026-09-29 123039" src="https://github.com/user-attachments/assets/da3a1065-9248-4653-9a82-896b0a89a299" />



### 2. Credit Card Customer Report
Focuses on demographic profiles, customer segments, and revenue distribution across groups.
* **Demographics:** Analysis by Gender (Female: $29.6M, Male: $25.8M), Age Groups (highest spenders in 40–50 age range), Education, and Marital Status.
* **Economic Insights:** Revenue segmented by Customer Job (Self-employed, Businessman, Blue-collar, Govt, White-collar, Retirees) and Salary Tiers (High, Mid, Low).
* **Geographic Distribution:** Highlights top revenue-generating states (TX, NY, CA, FL, NJ).

---
<img width="1038" height="592" alt="Screenshot 2026-09-29 123107" src="https://github.com/user-attachments/assets/43b0aa63-b269-42e0-8ef2-9f50e545bf07" />

## 🔍 Exploratory Data Analysis (SQL Queries)

Key SQL queries executed in MySQL Workbench for preliminary data analysis:

Total Revenue, Total Interest, and Total Amount Calculation
Revenue Breakdown by Card Category
Customer Demographic Segmentation by Gender & Job Type


Business Key Takeaways & Recommendations
Dominant Card Category: The Blue Card tier generates the vast majority of overall revenue ($46.2M out of $55.4M) and interest earnings. Target retention and reward programs toward this tier.

Channel Performance: Swipe payments generate $35M out of $55M total revenue, while online payment conversion remains low ($3M). Introduce incentives for digital and online card usage.

Primary Spend Categories: Bills ($14M) and Entertainment ($10M) represent the largest spending categories. Partner with utility platforms and entertainment brands for targeted promotional offers.

Demographic Targets: Customers aged 40–50 and Self-Employed/Business Owners yield the highest revenue and income levels. Marketing efforts should target mid-career professionals and high-income earners.
