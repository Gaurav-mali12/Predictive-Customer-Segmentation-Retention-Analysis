CREATE DATABASE IF NOT EXISTS RetailAnalytics;
USE RetailAnalytics;

DROP TABLE IF EXISTS staging_retail_data;

CREATE TABLE staging_retail_data (
    Invoice 	VARCHAR(20),
    StockCode 	VARCHAR(20),
    Description TEXT,
    Quantity 	INT,
    InvoiceDate VARCHAR(50),  -- Changed to VARCHAR to accept any format
    Price 		DECIMAL(12, 4),
    Customer_ID VARCHAR(20),
    Country 	VARCHAR(50)
);
