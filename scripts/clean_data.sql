CREATE TABLE cleaned_retail_data AS
SELECT 
    Invoice,
    StockCode,
    Description,
    Quantity,
    -- Fix the date so it's a real Date and not just Text
    STR_TO_DATE(InvoiceDate, '%Y-%m-%d %H:%i:%s') AS Clean_Date,
    Price,
    Customer_ID,
    Country,
    -- Calculate Sales (Quantity * Price) so we don't have to do it later
    (Quantity * Price) AS Total_Sales
FROM staging_retail_data
-- Filter out the "bad" data
WHERE Quantity > 0               -- We don't want returned items
  AND Customer_ID IS NOT NULL    -- We need the ID to track them
  AND Customer_ID <> '';         -- Some IDs might be empty strings