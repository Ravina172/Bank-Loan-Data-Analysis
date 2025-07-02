
SELECT * FROM financial_loan

-- 1. Total Loan applications
SELECT COUNT(id) AS [Total Loan Application] FROM financial_loan

-- 2. MTD Load Application 
SELECT COUNT(id) AS [Month to Date Load Aplications] FROM financial_loan
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

-- 3.PMTD 
SELECT COUNT(id) AS [Previous Month to Date Load Aplications] FROM financial_loan
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

-- 4.Total funded Amount
SELECT SUM(loan_amount) AS [Total Funded Amount] FROM financial_loan

-- 5.Total Funded amount in latest month
SELECT SUM(loan_amount) AS [Latest Month Total Amount] FROM financial_loan
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

-- 6.Prevoius Month to date funded amount
SELECT SUM(loan_amount) AS [Previous Month to Date funded amount] FROM financial_loan
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

-- 7. Total received amount
SELECT SUM(total_payment) AS [Total Amount Received] FROM financial_loan

-- 8. MTD received amonut
SELECT SUM(total_payment) AS [Latest Month Total Amount Received] FROM financial_loan
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

-- 9. PMTD recieved amount
SELECT SUM(total_payment) AS [Previous Month Total Amount Received] FROM financial_loan
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

-- 10. Avg interest rate
SELECT ROUND(AVG(int_rate)*100,2) AS [Average Interest Rate] FROM financial_loan

-- 11. MTD ineterest rate
SELECT ROUND(AVG(int_rate)*100,2) AS [Latest Month Average Interest Rate] FROM financial_loan
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

-- 12. PMTD interest rate
SELECT ROUND(AVG(int_rate)*100,2) AS [Previous Month Average Interest Rate] FROM financial_loan
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

-- 13. DTI RATIO 
SELECT ROUND(AVG(dti),2) [DTI]  FROM financial_loan

-- 14. MTD DTI RATIO
SELECT ROUND(AVG(dti),2) [Latest Month DTI]  FROM financial_loan
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

-- 15. PMTD RATIO
SELECT ROUND(AVG(dti),2) [Previous Month DTI]  FROM financial_loan
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

-- 16. GOOD LOAN APPLICATIONS PERCENTAGE
SELECT 
	(COUNT( CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END)*100)
	/
	COUNT(id) AS [Good loan Percentage]
FROM financial_loan

-- 17. Count of different loan status
SELECT 
	COUNT( CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END)
FROM financial_loan AS [Good Loan Applications]

-- 17. BAD LOAN APPLICATIONS 
SELECT 
	(COUNT( CASE WHEN loan_status = 'Charged off' THEN id END)*100)
	/
	COUNT(id) AS [Bad loan Percentage]
FROM financial_loan

-- 18. Good loan Applications
SELECT 
	COUNT( CASE WHEN loan_status = 'Charged off' THEN id END)
FROM financial_loan AS [Bad Loan Applications]

-- 18. GOOD LOAN FUNDED AMOUNT
SELECT SUM(loan_amount) AS [Good Loan Funded Amount] FROM financial_loan
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

-- 19. GOOD LOAN RECEIVED AMOUNT
SELECT SUM(total_payment) AS [Good Loan received Amount] FROM financial_loan
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

-- 20. BAD LOAN FUNDED AMOUNT
SELECT SUM(loan_amount) AS [Bad Loan Funded Amount] FROM financial_loan
WHERE loan_status = 'Charged off' 

-- 19. BAD LOAN RECEIVED AMOUNT
SELECT SUM(total_payment) AS [Bad Loan received Amount] FROM financial_loan
WHERE loan_status = 'Charged off'

-- 20. GROUP BY LOAN STATUS 
SELECT 
	loan_status,
	COUNT(id) [Total applications],
	SUM(loan_amount) [Total funded amount],
	SUM(total_payment) [Total Received amount],
	AVG(int_rate*100) [Average interest rate],
	AVG(dti*100) [DTI]
FROM financial_loan
GROUP BY loan_status

-- 21. GROUP BY LOAN STATUS FOR LATEST MONTH
SELECT 
	loan_status,
	SUM(loan_amount) [ Latest month Total funded amount],
	SUM(total_payment) [ Latest month Total Received amount]
FROM financial_loan
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021
GROUP BY loan_status

-- 21. GROUP BY LOAN STATUS FOR PAST MONTH
SELECT 
	loan_status,
	SUM(loan_amount) [ Past month Total funded amount],
	SUM(total_payment) [ Past month Total Received amount]
FROM financial_loan
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021
GROUP BY loan_status

-- 22. Analysis by month
SELECT 
    MONTH(issue_date) as [Month number],
	DATENAME(MONTH,issue_date) AS [Month],
	COUNT(id) AS [Total applications],
	SUM(loan_amount) as [Total funded amount],
	SUM(total_payment) AS [Total received amount]
FROM financial_loan
GROUP BY MONTH(issue_date),DATENAME(MONTH,issue_date)
ORDER BY MONTH(issue_date)

-- 23. Regional analysis by month
SELECT 
    address_state,
	COUNT(id) AS [Total applications],
	SUM(loan_amount) as [Total funded amount],
	SUM(total_payment) AS [Total received amount]
FROM financial_loan
GROUP BY address_state
ORDER BY address_state

-- 24. Analysis by term
SELECT 
    term,
	COUNT(id) AS [Total applications],
	SUM(loan_amount) as [Total funded amount],
	SUM(total_payment) AS [Total received amount]
FROM financial_loan
GROUP BY term
ORDER BY term

-- 25. Anlysis by employee length
SELECT 
    emp_length,
	COUNT(id) AS [Total applications],
	SUM(loan_amount) as [Total funded amount],
	SUM(total_payment) AS [Total received amount]
FROM financial_loan
GROUP BY emp_length
ORDER BY emp_length

-- 26. Analysis by purpose
SELECT 
    purpose,
	COUNT(id) AS [Total applications],
	SUM(loan_amount) as [Total funded amount],
	SUM(total_payment) AS [Total received amount]
FROM financial_loan
GROUP BY purpose
ORDER BY purpose

--27. Analysis by home ownership
SELECT 
    home_ownership,
	COUNT(id) AS [Total applications],
	SUM(loan_amount) as [Total funded amount],
	SUM(total_payment) AS [Total received amount]
FROM financial_loan
GROUP BY home_ownership
ORDER BY home_ownership


	








