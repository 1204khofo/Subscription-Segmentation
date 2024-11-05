# Customer Segmentation For Subscription Service 

### Project Topic: Customer Segmentation 

[Project Overview](#project-overview)

[Tools Used](#tools-used)

[Data Cleaning and Preparations](#data-cleaning-and-preparation)

[Exploratory Data Analysis](#exploratory-data-analysis)

[Data Analysis](#data-analysis)

 [Data Visualization](#data-visualization)

---
### Project Overview:
---
This project's main objective is to analyze a Subscription Service Customer Segmentation using specific key metrics to identify segments and trends. Our goal is to understand Customer behaviour, track Subscription and identify key trends in cancellations and renewal

### Data Sources 
---
The main data source utilized in this analysis is a CustomerData.csv file, an open-source dataset that can be freely downloaded from various online platforms.

### Tools Used
---
- Microsoft Excel [Download Here](https://www.microsoft.com)
   - for Data Cleaning, Analysis and Visualization 
- SQL- Structured Query Language for  Querying of Data 
- Power BI for Visualization
- GitHub for Portfolio Building

### Data Cleaning and Preparations 
---
In the initial phase of the Data cleaning and Preparations, we perform the following actions;
 1. Data loading and Inspection
 2. Handling missing Variables
 3. Removing Duplicates 
 4. Data Cleaning and Formatting


### Exploratory Data Analysis
---
EDA involves exploring of the data to answer some questions about the Data such as;
 -  Understanding Customer behaviour
 - Which subscription type is the most popular
 - What are the Regional Performances

### Data Analysis 
---
This is where we include basic lines of code or queries used during analysis 
```
SQL
------------Total Number Of Customers from Each Region--------
Select region, count(distinct CustomerID) as totalCustomers from [dbo].[LITA Capstone Dataset  customer Data csv] 
group by Region 

---------Most popular Subscription type by number of Customers---------
Select top 1 subscriptiontype, count(distinct customerid) as total_customers
From [dbo].[LITA Capstone Dataset  customer Data csv]
Group by subscriptiontype 
Order by total_customers desc;

--------Average Subscription Duration For All Customers-----------
Select avg(datediff(day, subscriptionstart, subscriptionend)) as avg_subscription_duration
From [dbo].[LITA Capstone Dataset  customer Data csv]

----------Total Revenue by Subscription Type-----------
Select subscriptiontype,
Sum(revenue) as total_revenue 
From [dbo].[LITA Capstone Dataset  customer Data csv]
Group by subscriptiontype;
```

### Data Visualization

![Sub by Region](https://github.com/user-attachments/assets/06b2f1f2-0736-4021-97f2-71c005077378)

![Subscription Segmentation](https://github.com/user-attachments/assets/ffa12765-1e85-47f1-bb52-7eceedf38451)



 


