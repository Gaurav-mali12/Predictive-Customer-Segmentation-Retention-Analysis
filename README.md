# Customer Segmentation & Predictive Retention Analysis

## 📌 Project Overview
Successfully engineered a data pipeline to transform **805,620 raw transactions** into a predictive retention system. This project utilizes **MySQL** for large-scale data staging and **Python** for machine learning to identify at-risk customers among **5,878 unique profiles**.

## 🛠️ Technical Challenges & Solutions
* **Big Data Staging (MySQL):** Managed the ETL of 800k+ rows. Resolved **Error 2068/3948** regarding local data loading and handled a significant **74,215 quantity overflow** anomaly.
* **Data Integrity:** Standardized inconsistent date formats and cleared null `Customer_ID` records directly in the database to optimize Python memory usage.
* **RFM Modeling:** Developed a scoring system for **Recency, Frequency, and Monetary** values to categorize the customer base.
* **Churn Prediction:** Built a **Random Forest Classifier** to assign a **Churn Probability** to every customer, enabling proactive marketing.

## 🧰 Tech Stack
* **Database:** MySQL (Staging & Cleaning)
* **Language:** Python 3.x
* **Libraries:** Pandas, Scikit-Learn, Matplotlib, Seaborn

## 📊 Business Strategy Results
| Segment | Strategy |
| :--- | :--- |
| **Champions** | VIP Loyalty Program (No discounts) |
| **At Risk** | **Urgent Win-Back:** Targeted 20% Discount based on ML Churn score |
| **Loyal** | Upsell & Cross-sell campaigns |
| **Lost** | Re-activation survey & Cleanup |

## 📂 Repository Structure
```text
├── data/
│   |   ├── link to download dataset

├── scripts/
│   ├── sql/
│   │   ├── DDL.sql             # Table schemas and constraints
│   │   ├── Data_load.sql       # Bulk data import and Local Infile handling
│   │   ├── Data_Quality_check.sql # Outlier detection (74k qty fix) & null audits
│   │   └── clean_data.sql      # Final ETL and feature engineering
│   └── python/
│       └── analysis_ml.py      # RFM Scoring & Random Forest Churn Model
├── documents/
│   ├── Project_Report.md       # Detailed methodology and business findings
│   └── Technical_Specs.pdf     # Database architecture and ML hyperparameters
└── README.md                   # Project summary and quick-start guide
```

## 📊 Data Source
The dataset used in this project is the **Online Retail II** dataset from the **UCI Machine Learning Repository**. 
* **Download Link:** [Kaggle - Online Retail II Dataset](https://www.kaggle.com/datasets/nabeelsajid917/online-retail-ii-uci)
* **Description:** Contains all transactions occurring for a UK-based and registered non-store online retail between 01/12/2009 and 09/12/2011.

## ⚖️ License
This project is licensed under the **MIT License**. You are free to use, modi
