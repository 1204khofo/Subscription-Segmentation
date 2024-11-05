# Customer Segmentation For Subscription Service 

### Project Topic: Customer Segmentation 

[Project Overview](#project-overview)

[Tools Used](#tools-used)

[Data Cleaning and Preparations](#data-cleaning-and-preparation)

[Exploratory Data Analysis](#exploratory-data-analysis)

[Data Analysis](#data-analysis)

 [Data Visualization](#data-visualization)

 [Report](#report)

 [Recommendation](#recommendation)

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
---

![Sub by Region](https://github.com/user-attachments/assets/06b2f1f2-0736-4021-97f2-71c005077378)

![Subscription Segmentation](https://github.com/user-attachments/assets/ffa12765-1e85-47f1-bb52-7eceedf38451)

### Report
---
This customer Subscription segmentataion data analysis has revealed some intriguing trends regarding subscription usage. The "Basic" subscription has emerged as the clear favorite, representing over 50% of all subscriptions. This indicates that simplicity and affordability resonate strongly with our customer base. 

On average, subscribers maintain their plans for a full year, with an average subscription duration of 365 days. This consistent yearly renewal cycle highlights the satisfaction and trust our customers have in our service. Notably, the East region stands out for its exceptional loyalty, recording zero cancellations—an impressive testament to the commitment of customers in that area.

Overall, the total revenue from subscriptions has reached an impressive 68 million, underscoring the value our customers place on their subscriptions and establishing a robust financial foundation for our service. This data does not only reflects customer loyalty but also provides valuable insights for future strategies.

### Recommendation
---
Based on the analysis, here are few recommendations:

1. Enhance the Basic Subscription: Given its popularity, consider adding extra features or benefits to the "Basic" subscription to further increase its appeal. This could include exclusive content, discounts, or loyalty rewards to enhance customer satisfaction and retention.

2. Leverage East Region Loyalty: Since the East region has shown remarkable commitment with zero cancellations, explore opportunities to engage these customers further. Implement targeted marketing campaigns or loyalty programs that acknowledge their loyalty, which could strengthen their connection to the brand.

3. Analyze Cancellation Patterns: Investigate the reasons behind cancellations in other regions to identify common pain points. Addressing these issues could help reduce churn rates and improve overall customer retention.

4. Promote Subscription Benefits: To attract more customers to higher-tier plans, emphasize the unique benefits and features of those subscriptions. Highlighting the value they provide may encourage customers to upgrade.

5. Monitor Customer Satisfaction: Continuously evaluate customer satisfaction scores and feedback to adapt strategies as needed. Engaging with customers can provide insights into their needs and preferences, ensuring that the service evolves with them.

By implementing these recommendations, we can capitalize on existing strengths while addressing areas for improvement, ultimately enhancing customer loyalty and revenue growth.



 


