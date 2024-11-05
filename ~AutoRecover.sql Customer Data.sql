Select * from dbo.[LITA Capstone Dataset  customer Data csv]

------------Total Number Of Customers from Each Region--------
Select region, count(distinct CustomerID) as totalCustomers from [dbo].[LITA Capstone Dataset  customer Data csv] 
group by Region 

---------Most popular Subscription type by number of Customers---------
Select top 1 subscriptiontype, count(distinct customerid) as total_customers
From [dbo].[LITA Capstone Dataset  customer Data csv]
Group by subscriptiontype 
Order by total_customers desc;
 
--------------Customers who Cancelled Their Subscription Within six Months------------
Select customerID
From [dbo].[LITA Capstone Dataset  customer Data csv]
Where datediff(month, subscriptionstart, subscriptionend) <= 6

--------Average Subscription Duration For All Customers-----------
Select avg(datediff(day, subscriptionstart, subscriptionend)) as avg_subscription_duration
From [dbo].[LITA Capstone Dataset  customer Data csv]


----------Customers with Subscription Longer than 12 months----------
Select CustomerID
From [dbo].[LITA Capstone Dataset  customer Data csv]
Where datediff(month, subscriptionstart,subscriptionend) >12;

----------Total Revenue by Subscription Type-----------
Select subscriptiontype,
Sum(revenue) as total_revenue 
From [dbo].[LITA Capstone Dataset  customer Data csv]
Group by subscriptiontype;

-------------Total number of active and cancelled Subscription------------
Select 
Sum(Case When canceled is Null THEN 1 ELSE 0 END) AS ActiveSubscriptions,
Sum(Case When canceled is NOT NULL THEN 1 ELSE 0 END) AS CanceledSubscriptions
FROM [dbo].[LITA Capstone Dataset  customer Data csv]