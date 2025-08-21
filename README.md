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


<img width="640" height="480" alt="Figure_5" src="https://github.com/user-attachments/assets/8a557bab-3338-469e-a577-d72d7d1bdd0f" />


<img width="640" height="480" alt="Figure_6" src="https://github.com/user-attachments/assets/8d1b524f-aca4-41c0-a361-4203e76e3bd3" />


Main Findings:

- Pricing and lack of necessity are the leading cancellation reasons.

- Majority of payments are through Credit/Debit Cards.

- Low Power User count shows untapped engagement potential.

- Login patterns show long inactivity before churn.

<img width="600" height="480" alt="Figure_1" src="https://github.com/user-attachments/assets/489aa1ce-4705-407f-ba2e-40a6915640f6" />


## Insights Deep Dive

### Churn Trends

- Mid-2024 saw a spike in cancellations, coinciding with subscription price changes, mainly due to technical issue at that time.

- Active users fluctuated but didn’t show consistent upward growth.

- On the other hand cancelled/churned users stay consistent on the same number with little bit of upward and downward going.

  <img width="640" height="480" alt="Figure_3" src="https://github.com/user-attachments/assets/13caa608-2323-4f0c-84a4-03b27e8052ff" />


### Customer Segments

- At Risk Users (280) make up more than half of the customer base.

- Power Users (19) show high engagement but represent only 3.8% of total users.

- While there is also a small and consistent amount of other active users(79).

  <img width="1366" height="663" alt="Figure_2" src="https://github.com/user-attachments/assets/04a3616d-b828-4487-8491-6c2394e6f961" />


### Cancellation Reasons

Top churn reasons:

- Too Expensive (32)

- No Longer Needed (31)

- Switched to Competitor (15)

- Technical Issues (20)

- Lack of Use (25)

  <img width="640" height="480" alt="Figure_4" src="https://github.com/user-attachments/assets/cd3016d1-210e-47e2-af30-266d9d0736ce" />



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
