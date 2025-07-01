# Loan Risk & Performance Monitoring System
![Bank Logo](https://f2fa1cdd9340fae53fcb49f577292458.cdn.bubble.io/cdn-cgi/image/w=,h=,f=auto,dpr=1,fit=contain/f1701834212030x441532630499263300/Screenshot%20%284%29.png)

## Problem Statement
As a data analyst supporting the credit risk and lending operations team, I developed an end-to-end analytics solution to answer a critical question: 
“Which borrowers and loan segments present the highest financial risk, and how can we track loan performance in real time to protect portfolio health?”
This dashboard focuses on three core challenges lenders face:
- Early identification of high-risk borrowers based on credit grade, DTI, and repayment patterns.
- Visibility into loan portfolio trends — including applications, funding, and repayments across time and regions.
- Proactive risk monitoring, including custom risk flags and a composite portfolio health score for executive reporting.

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
1. **Business Understanding**
- Interviewed key stakeholders (risk, product, credit ops) to identify metrics that impact loan performance and early warning signals.

2. **Data Preparation**
- Cleaned and normalized borrower and loan-level data
- Engineered features such as:
    - DTI bucket
    - Employment group
    - Risk_Flag column (based on Grade and DTI)

3. **Dashboard Development**
- Structured dashboard into 4 intuitive pages:
1.**Summary** – High-level KPIs (MTD, MoM), good vs. bad loan ratio
2.**Overview** – Loan distributions by region, borrower type, and product
3.**Details** – Record-level view for loan audits and deep dives
4.**Risk Insights** – Forecasting trends, high-risk alerting, portfolio scoring

4. **Data Validation**
- Used SQL queries to validate Power BI outputs including:
    - Funding totals
    - Repayment values
    - Good vs. bad loan segmentation
    - Risk scoring logic
    - 
## Key Insights
- **Elevated Risk - High DTI + Low Risk**
Borrowers with DTI > 40% and Grade D or lower show a disproportionately high default likelihood.
- **60-Month Loans Underperform**
Longer-term loans have a higher delinquency rate and slower repayment compared to 36-month terms.
- **Regional Risk Concentration Detected**
California and Texas show the highest loan volumes and above-average default rates, indicating portfolio overexposure.
- **Early Delinquency**
Borrowers with < 2 years employment are more likely to miss early payments, especially when income is unverified.
- **Portfolio Health Is Margin-Thin**
Health score indicates a tight balance between good loans and risk exposure, calling for stricter underwriting.

## Business Recommendation
- Tighten Underwriting for High-Risk Profiles
Introduce stricter approval rules for borrowers with DTI > 40% and Grade D or lower to reduce default exposure.
- Prioritize Income Verification
Mandate income verification for borrowers with < 2 years of employment to improve early repayment behavior.
- Refocus Lending Strategy on Shorter Terms
Promote 36-month terms over 60-month to improve cash flow and reduce repayment risk.
- Rebalance Regional Lending Mix
Limit new originations in high-default regions like California and Texas; increase presence in low-risk states.

## Visualization
### Summary Dashboard

### Overview Dashboard

### Loan Detail

### Risk Insight Dashboard







