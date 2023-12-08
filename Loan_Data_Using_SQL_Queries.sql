CREATE DATABASE Loan;

USE Loan;

SELECT * FROM loan_data;

-- 1) Count of Loans by Purpose
 SELECT purpose, COUNT(*) AS Count_of_Loan
 FROM loan_data
 GROUP BY purpose;
 
 -- 2) Average Interest Rate by Credit Policy
 SELECT credit_policy, AVG(int_rate) AS Average_Interest_Rate
 FROM loan_data
 GROUP BY credit_policy;
 
 -- 3) Maximum Debt-to-Income Ratio
SELECT MAX(dti) AS MAX_DTI_Ratio
FROM loan_data;

-- 4) Count of Top 10 Delinquent Loans by FICO Score
SELECT fico, COUNT(*) AS Deliquent_Count
FROM loan_data
Where delinq_2yrs > 0
GROUP BY fico
ORDER BY fico DESC LIMIT 10;

-- 5) Average Revolving Line Utilization by Loan Purpose
SELECT purpose, AVG(revol_util) AS Average_Revolving_Utilization
FROM loan_data
GROUP BY purpose
ORDER BY Average_Revolving_Utilization DESC;

-- 6) Percentage of Fully Paid Loans
SELECT
    COUNT(*) AS total_loans,
    SUM(IF(not_fully_paid = 0, 1, 0)) AS fully_paid_loans,
    (SUM(IF(not_fully_paid = 0, 1, 0)) / COUNT(*)) * 100 AS percentage_fully_paid
FROM
    loan_data;
    
-- 7) Top 5 Highest Installment Amounts
SELECT installment
FROM loan_data
ORDER BY installment DESC LIMIT 5;

-- 8) Distribution of top 10 Score by count
SELECT fico, COUNT(*) AS COUNT
FROM loan_data
GROUP BY fico
ORDER BY COUNT DESC LIMIT 10;

-- 9) Count of Public Records by Loan Purpose
SELECT purpose, COUNT(pub_rec) AS Public_Record_Counts
FROM loan_data
GROUP BY purpose;

-- 10) Average Annual Income for Fully Paid vs. Not Fully Paid
SELECT not_fully_paid, AVG(log_annual_inc) AS Average_Annual_Income
FROM loan_data
GROUP BY not_fully_paid;