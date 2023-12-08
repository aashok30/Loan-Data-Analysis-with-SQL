# Loan Data Analysis with SQL
![Loan](https://github.com/aashok30/Loan_Data_Using_SQL/assets/101622691/76717ecc-406d-4634-b937-76ca0d84765c)

This repository contains SQL queries and analyses performed on a loan dataset, aiming to extract valuable insights from more than 9,500 loans. The dataset includes information on the loan structure, borrower details, and repayment status, sourced from LendingClub.com.

## Dataset Overview
credit_policy: 1 if the customer meets the credit underwriting criteria; 0 otherwise.
purpose: The purpose of the loan.
int_rate: The interest rate of the loan (higher for riskier borrowers).
installment: Monthly installments owed by the borrower.
log_annual_inc: Natural log of the self-reported annual income of the borrower.
dti: Debt-to-income ratio of the borrower.
fico: FICO credit score of the borrower.
days_with_cr_line: Number of days the borrower has had a credit line.
revol_bal: Borrower's revolving balance (unpaid amount at the end of the credit card billing cycle).
revol_util: Borrower's revolving line utilization rate.
inq_last_6mths: Borrower's number of inquiries by creditors in the last 6 months.
delinq_2yrs: Number of times the borrower has been 30+ days past due in the past 2 years.
pub_rec: Borrower's number of derogatory public records.
not_fully_paid: 1 if the loan is not fully paid; 0 otherwise.

## Analysis Highlights

1) Count of Loans by Purpose: Understand the distribution of loans across different purposes.
2) Average Interest Rate by Credit Policy: Assess the impact of credit policy on interest rates.
3) Maximum Debt-to-Income Ratio: Identify the highest debt-to-income ratio to assess risk.
4) Count of Top 10 Delinquent Loans by FICO Score: Identify FICO scores associated with delinquent loans.
5) Average Revolving Line Utilization by Loan Purpose: Understand how borrowers use their revolving credit lines.
6) Percentage of Fully Paid Loans: Evaluate the overall loan repayment success rate.
7) Top 5 Highest Installment Amounts: Identify loans with the highest monthly installments.
8) Distribution of Top 10 Scores by Count: Understand the distribution of top FICO scores.
9) Count of Public Records by Loan Purpose: Assess the impact of public records on loan purposes.
10) Average Annual Income for Fully Paid vs. Not Fully Paid: Analyze the relationship between annual income and loan repayment.
