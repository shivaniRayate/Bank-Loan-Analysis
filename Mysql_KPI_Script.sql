SELECT COUNT(*) FROM bank_data;

SELECT * FROM bank_data;

####  Total Collection  ####
  SELECT 
    SUM(Total_Pymnt) AS Total_Collection
FROM
    bank_data;
    
  
####  Total Interest  ####
 SELECT 
    SUM(Total_Rec_Int) AS Total_Intrest
FROM
    bank_data;
    
    
 
####  Default Loan Count  ####
SELECT 
    COUNT(Is_Default_Loan) AS Default_Loan_Count
FROM
    bank_data
WHERE
    Is_Default_Loan = 1;
    

####  Grade-Wise Loan  ####
SELECT 
    Grade,
    COUNT(Account_ID) AS Grade_Wise_Loan_Count,
    SUM(Loan_Amount) AS Grade_Wise_Loan
FROM
    bank_data
GROUP BY Grade
ORDER BY Grade ASC;


####  State-Wise Loan Distribution  ####
SELECT 
    State_Name,
    COUNT(Account_ID) AS Loan_Count,
    SUM(Loan_Amount) AS State_Wise_Loan_Distribution
FROM
    bank_data
GROUP BY State_Name;


####  Branch-Wise Performance (Revenue, Interest, and Fees)  ####
SELECT 
    Branch_Name,
    SUM(Total_Pymnt) AS Total_Revenue,
    SUM(Total_Rec_Int) AS Intrest,
    SUM(Total_Fees) AS Fees
FROM
    bank_data
GROUP BY Branch_Name;
       
 

 