USE customer_churn;

CREATE TABLE Customer_Retention (
    User_ID VARCHAR(10),
    Join_Date VARCHAR(10),
    Subscription_Type VARCHAR(20),
    Usage_Hours_per_Week DECIMAL(5,1),
    Last_Login VARCHAR(10),
    Support_Tickets_Raised INT,
    Payment_Method VARCHAR(20),
    Subscription_Status VARCHAR(20),
    Cancellation_Reason VARCHAR(50),
    NPS_Score INT,
    Customer_Tenure_Months DECIMAL(5,1),
    Days_Since_Last_Login INT,
    Churned INT,
    Join_Month VARCHAR(10),
    Segment VARCHAR(50),
    Start_Month VARCHAR(10)
);
SELECT COUNT(*) AS Total_Users FROM Customer_Retention;

SELECT COUNT(*) AS Cancelled_Users 
FROM Customer_Retention 
WHERE Subscription_Status = 'Cancelled';

SELECT COUNT(*) AS Power_Users 
FROM Customer_Retention 
WHERE Segment = 'Power User';

SELECT COUNT(*) AS At_Risk_Users 
FROM Customer_Retention 
WHERE Segment = 'At Risk User';

SELECT 
    ROUND((COUNT(CASE WHEN Subscription_Status = 'Cancelled' THEN 1 END) * 100.0) / COUNT(*), 1) AS Churn_Rate
FROM Customer_Retention;

SELECT 
    Subscription_Status,
    COUNT(*) AS User_Count
FROM Customer_Retention
GROUP BY Subscription_Status;

SELECT 
    Segment,
    COUNT(*) AS User_Count
FROM Customer_Retention
GROUP BY Segment;

SELECT 
    `Start of Month`,
    SUM(CASE WHEN Subscription_Status = 'Active' THEN 1 ELSE 0 END) AS Active_Users,
    SUM(CASE WHEN Subscription_Status = 'Cancelled' THEN 1 ELSE 0 END) AS Cancelled_Users
FROM Customer_Retention
GROUP BY `Start of Month`
ORDER BY STR_TO_DATE(`Start of Month`, '%d-%m-%Y');

SELECT 
    Cancellation_Reason,
    COUNT(*) AS User_Count
FROM Customer_Retention
WHERE Subscription_Status = 'Cancelled'
GROUP BY Cancellation_Reason;

SELECT ROUND(AVG(NPS_Score), 2) AS Avg_NPS FROM Customer_Retention;

SELECT 
    Payment_Method,
    COUNT(*) AS User_Count
FROM Customer_Retention
GROUP BY Payment_Method;

SELECT 
    YEAR(STR_TO_DATE(Last_Login, '%d-%m-%Y')) AS Login_Year,
    COUNT(*) AS User_Count
FROM Customer_Retention
GROUP BY YEAR(STR_TO_DATE(Last_Login, '%d-%m-%Y'));
