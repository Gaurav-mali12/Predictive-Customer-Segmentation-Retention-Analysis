
/* PROJECT: Customer Segmentation & Retention Analysis
   TASK: Professional Bulk Data Ingestion
   
*/

USE RetailAnalytics;

-- Enable local file loading on the server side
SET GLOBAL local_infile = 1;

-- Clear previous failed attempts to ensure a clean data state
TRUNCATE TABLE staging_retail_data;

-- Professional Bulk Load command
LOAD DATA LOCAL INFILE "C:/Users/malig/OneDrive/Desktop/Customer Segmentation and r/online_retail_II.csv" 
INTO TABLE staging_retail_data
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
-- Using \n or \r\n depending on how the CSV was saved
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS; -- Skip the header to avoid data type errors
