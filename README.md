# Customer-Retention-and-churn-analysis

## Project Overview

Customer churn — the percentage of customers who stop using a service — is one of the most critical metrics for subscription-based businesses. A high churn rate directly reduces revenue, increases acquisition costs, and threatens long-term growth.

This project focuses on analyzing customer churn and retention patterns using a combination of SQL, Python, and Power BI. It digs into user behavior, identifies at-risk customers, examines cancellation reasons, and offers strategic recommendations to improve retention rates.

By leveraging data-driven decision-making, we aim to:

- Detect early warning signs of churn

- Understand customer segments and satisfaction levels

- Propose actionable retention strategies to the business

## Data Structure Overview

The dataset contains multiple customer attributes that enable a 360° churn analysis with 500 customers.

<img width="301" height="319" alt="dataa3" src="https://github.com/user-attachments/assets/30e144c1-7285-42df-ac94-05c0daa7de00" />

<img width="308" height="319" alt="dataa2" src="https://github.com/user-attachments/assets/e0e36680-3038-40bb-b5d3-97b97ae1eea8" />

## Executive Summary

From July 2023 to July 2025, the platform onboarded 500 customers, of which 122 churned — resulting in a 24.4% churn rate.

A significant 280 users (56%) are classified as At Risk, meaning they have low engagement and could churn in the near future.
The Net Promoter Score (NPS) is -2, indicating more detractors than promoters and highlighting the need for customer experience improvements.

<img width="999" height="100" alt="insi 1" src="https://github.com/user-attachments/assets/5b356ba8-bccb-4b6a-9bf5-fad319420b87" />


<img width="400" height="260" alt="insi 2" src="https://github.com/user-attachments/assets/e863ab37-165b-460e-b8b2-53f625d3e8fc" />
<img width="400" height="260" alt="insi 3" src="https://github.com/user-attachments/assets/33eae3a7-0d9c-47c6-acfd-e58dd4fff4a8" />

Main Findings:

- Pricing and lack of necessity are the leading cancellation reasons.

- Majority of payments are through Credit/Debit Cards.

- Low Power User count shows untapped engagement potential.

- Login patterns show long inactivity before churn.

<img width="400" height="240" alt="insi 5" src="https://github.com/user-attachments/assets/50508bb6-8dae-45d6-a35e-30a55553f2dd" />

## Insights Deep Dive

### Churn Trends

- Mid-2024 saw a spike in cancellations, coinciding with subscription price changes, mainly due to technical issue at that time.

- Active users fluctuated but didn’t show consistent upward growth.

- On the other hand cancelled/churned users stay consistent on the same number with little bit of upward and downward going.

  <img width="626" height="180" alt="insi 4" src="https://github.com/user-attachments/assets/3dd94b6b-2c5c-4144-8f00-0e559d11956b" />


### Customer Segments

- At Risk Users (280) make up more than half of the customer base.

- Power Users (19) show high engagement but represent only 3.8% of total users.

- While there is also a small and consistent amount of other active users(79).

  <img width="228" height="161" alt="insi 2" src="https://github.com/user-attachments/assets/3bc13390-7ea0-4136-8efe-8f5d1bdfd790" />


### Cancellation Reasons

Top churn reasons:

- Too Expensive (32)

- No Longer Needed (31)

- Switched to Competitor (15)

- Technical Issues (20)

- Lack of Use (25)

  <img width="253" height="198" alt="insi 3" src="https://github.com/user-attachments/assets/c11f05e5-d9e4-4ea5-a989-3bd58038b7bb" />


### NPS Analysis

- With an NPS of -2, user dissatisfaction is high.

- Many detractors cite pricing and feature gaps as issues.

  <img width="184" height="70" alt="insi 6" src="https://github.com/user-attachments/assets/289adf80-d227-430f-9f67-df599ab6e8e7" />


### Payment & Login Patterns

- Over 60% of payments are via Credit Cards, followed by Debit Cards and PayPal.

- Users with over 60 days of inactivity have a higher churn likelihood.

## Recommendations

### 1) Customer Win-back Campaigns
Use targeted emails with discounts for churned users and special loyalty rewards for at-risk users.

### 2) Pricing Strategy Review
Introduce more affordable tiers or feature-limited options to reduce price-based churn.

### 3) Enhance Engagement
Launch tutorials, in-app notifications, and usage incentives to increase activity.

### 4) Proactive Support
Offer technical assistance before customers cancel due to issues.

### 5) Boost Advocacy & Referrals
Launch referral bonuses for satisfied customers to improve NPS and bring in new users.

## Tools & Technologies

Data Storage & Querying: MySQL

Data Processing: Python (Pandas, Seaborn)

Visualization: Power BI, Matplotlib

Data Source: CSV file (customer retention dataset), Excel
