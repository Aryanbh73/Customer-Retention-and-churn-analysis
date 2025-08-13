import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv('c:/Users/hp/OneDrive/Desktop/customer retention analysis/Customer_Retention_Analysis_Excel.csv')

total_users = df['User_ID'].nunique()

cancelled_users = df[df['Subscription_Status'] == 'Cancelled']['User_ID'].nunique()

power_users = df[df['Segment'] == 'Power User']['User_ID'].nunique()

at_risk_users = df[df['Segment'] == 'At Risk User']['User_ID'].nunique()

churn_rate = (cancelled_users / total_users) * 100

status_counts = df['Subscription_Status'].value_counts()
status_counts.plot.pie(autopct='%1.1f%%')
plt.title('Subscription Status Distribution')
plt.show()

segment_counts = df['Segment'].value_counts()
segment_counts.plot.bar()
plt.title('Customer Segments')
plt.ylabel('Number of Users')
plt.show()

monthly_data = df.groupby('Start of Month')['Subscription_Status']\
    .agg(Active=lambda x: (x == 'Active').sum(),
         Cancelled=lambda x: (x == 'Cancelled').sum())\
    .reset_index()

plt.plot(monthly_data['Start of Month'], monthly_data['Active'], label='Active')
plt.plot(monthly_data['Start of Month'], monthly_data['Cancelled'], label='Cancelled')
plt.title('Monthly Subscription Status')
plt.xlabel('Month')
plt.ylabel('Number of Users')
plt.legend()
plt.xticks(rotation=45)
plt.show()

cancelled_df = df[df['Subscription_Status'] == 'Cancelled']
reason_counts = cancelled_df['Cancellation_Reason'].value_counts()
reason_counts.plot.barh()
plt.title('Cancellation Reasons')
plt.xlabel('Number of Users')
plt.show()

avg_nps = df['NPS_Score'].mean()

payment_counts = df['Payment_Method'].value_counts()
payment_counts.plot.bar()
plt.title('Payment Methods')
plt.ylabel('Number of Users')
plt.show()

df['Last_Login_Year'] = pd.to_datetime(df['Last_Login'], format='%d-%m-%Y').dt.year
login_year_counts = df['Last_Login_Year'].value_counts().sort_index()
login_year_counts.plot.bar()
plt.title('Last Login Year')
plt.ylabel('Number of Users')
plt.show()