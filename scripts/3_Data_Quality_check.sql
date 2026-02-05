-- Step 1: Let's check our data
USE RetailAnalytics;

SELECT 
    -- How many total rows did we get?
    COUNT(*) AS total_rows,
    
    -- How many actual customers do we have?
    COUNT(DISTINCT Customer_ID) AS number_of_customers,
    
    -- How many rows are missing a Customer ID? 
    -- (We can't track churn for these people)
    SUM(CASE WHEN Customer_ID IS NULL OR Customer_ID = '' THEN 1 ELSE 0 END) AS missing_ids,
    
    -- What is the date range of our data?
    MIN(InvoiceDate) AS start_date,
    MAX(InvoiceDate) AS end_date
    
FROM staging_retail_data;
