# Loan Risk & Performance Monitoring System
![Bank Logo](https://f2fa1cdd9340fae53fcb49f577292458.cdn.bubble.io/cdn-cgi/image/w=,h=,f=auto,dpr=1,fit=contain/f1701834212030x441532630499263300/Screenshot%20%284%29.png)

## Problem Statement
The goal of this project was to answer a critical question in the lending domain:

"Which borrowers and loan segments present the highest financial risk, and how can we track loan performance in real time to protect portfolio health?"
The dashboard was designed to address three key challenges for financial institutions:

- Early risk detection using borrower-level indicators like credit grade, DTI, and payment history

- Portfolio trend analysis across funding, applications, and repayments by time and geography

- Proactive risk monitoring, including high-risk flags and a portfolio health scoring framework for executive reporting

## Objective
Design an end-to-end loan performance monitoring solution for financial institutions using Power BI, focused on:
- **Summary Dashboard**: Delivering real-time KPIs for loan applications, funding, repayments, and risk segmentation.
- **Overview Dashboard**: Visualizing loan trends across borrower profiles, products, and geographies.
- **Detail Dashboard**: Enabling deep dives into loan-level data for audits and analysis.
- **Risk Insights Dashboard**: Highlighting high-risk segments, forecasting future loan volume, and scoring portfolio health.
The objective is to empower credit and risk teams to **track loan performance, detect early risk signals, and optimize lending strategies** using actionable, self-serve analytics.

## Data Description
This project uses a banking loan performance dataset designed to reflect real-world borrower data, financial behavior, and loan lifecycle events. Key fields include:
- **Borrower Info**:	Employment Length, Title, Annual Income, Home Ownership, Address State.
- **Loan Info**: Loan Amount, Interest Rate, Grade, Subgrade, Term, Purpose.
- **Performance Data**:	Loan Status, Issue Date, Last Payment Date, Received Amount.
- **Risk Indicators**:	DTI (Debt-to-Income), Verification Status, Credit Pull History.

## Tools & Skills Used
- SQL
- Power Bi
- DAX

## Approach
1. **Understand the Business Problem**
   
2. **Prepare and Transform the Data**: Imported structured the loan data with borrower and repayment information. Used Excel for initial exploration and Power BI's Power Query Editor for transformation:
- Standardized data types (dates, numbers, categories).
- Handleded missing values and cleaned inconsistent fields.
- Added new columns for risk classification.
- Built date hierarchies to support time-based analysis (MTD, PMTD, MoM).

3. **Define Key Metrics and Validate**: Developed core KPIs using DAX in Power BI, including:
- Total Applications, Funded Amount, Amount Received.
- MTD / PMTD / MoM metrics for all key values.
- High-Risk Loan Count and a Portfolio Health Score (based on DTI and grade logic).
- Validated all Power BI outputs using SQL queries in SSMS, ensuring data accuracy and business alignment.

4. **Build Insight-Driven Dashboards**                                                                 
- **Summary**: Snapshot of core KPIs and good vs. bad loan split with trend indicators.
- **Overview**: Segmentation across geography, grade, term, and borrower profiles.     
- **Details**: Loan-level table with filters for audits and deep dives.                 
- **Risk Insights**: Forecasting, risk flag logic, and a visual portfolio health score.
     
5.**Apply Risk Intelligence Logic**: Created a High-Risk Loan Flag to help with forward-looking resource planning and risk adjustmentusing the following logic:
If DTI > 40% and Loan Grade ∈ {D, E, F, G} → Mark as “High Risk”
- Added forecasting visuals for:
- Monthly loan applications
- Funded and received amounts

6. **Validate and Deliver**: Used SQL in SSMS to cross-verify all DAX outputs, ensuring the final dashboards were:
- Aligned with business logic
- Reliable for decision-making
- Ready for monthly or quarterly rollout

## Key Insights
- **Elevated Risk: High DTI + Low Risk** borrowers with DTI > 40% and Grade D or lower show a disproportionately high default likelihood.
- **60-Month Loans Underperform**: Longer-term loans have a higher delinquency rate and slower repayment compared to 36-month terms.
- **Regional Risk Concentration Detected**: California and Texas show the highest loan volumes and above-average default rates, indicating portfolio overexposure.
- **Early Delinquency**: Borrowers with < 2 years employment are more likely to miss early payments, especially when income is unverified.
- **Portfolio Health Is Margin-Thin**: Health score indicates a tight balance between good loans and risk exposure, calling for stricter underwriting.

## Business Recommendation
- Tighten Underwriting for High-Risk Profiles
Introduce stricter approval rules for borrowers with DTI > 40% and Grade D or lower to reduce default exposure.
- Prioritize Income Verification
Mandate income verification for borrowers with < 2 years of employment to improve early repayment behavior.
- Refocus Lending Strategy on Shorter Terms
Promote 36-month terms over 60-month to improve cash flow and reduce repayment risk.
- Rebalance Regional Lending Mix
Limit new originations in high-default regions like California and Texas; increase presence in low-risk states.

## About Me
I'm an aspiring Data Analyst who turns raw data into actionable business insights. My strength lies in asking the right questions, building clear visual stories, and making recommendations that drive results.I’m actively looking for opportunities where I can help businesses grow through smarter data use.

Connect on [Linkedin](https://www.linkedin.com/in/ravina-patidar-474a9b255/)

Reach me at [Email](ravinapatidar13634@gmail.com)


