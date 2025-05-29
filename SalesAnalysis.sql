-- create database COMPANY;

-- use COMPANY;

-- select * from Sales;

/* Find all orders shipped via 'Economy' mode with a total amount greater than ₹ 25000   */
-- select * from sales  where Ship_Mode = 'Economy' and Total_Amount>25000;

/* Retrieve all sales data for 'Technology' category in 'Ireland' made after 2020-01-01  */
-- select * from sales where Category='Technology' and Country = 'Ireland' and Order_Date >'2020-01-01' ;
-- select * from sales order by Unit_Profit desc limit 10;

/*  Find all customers whose name starts with 'J' and ends with 'n' */
-- select Order_ID, Customer_Name from sales where Customer_Name LIKE 'j%n';

/* Retrieve all product names that contain 'Acco' anywhere in the name */
-- select Order_ID , product_name from sales where product_name LIKE '%Acco%';

/*  the top 5 cities with the highest total sales amount */
-- select City, sum(Total_Amount) AS Total_Sales from sales group by City order by Total_Sales desc limit 5;

/* Display the second set of 10 records for Customer_Name and Total_Amount in decreasing order */
-- select Customer_Name, Total_Amount from sales order by Total_Amount desc limit 10, 10;

/*Find total revenue, average unit cost, and total number of orders*/
-- select sum(Total_Amount) as `Total Revenue`, avg(Unit_Cost) as `Avg Unit Cost`, count(Order_ID) as `Number of Orders` from sales;

/* Count Unique number of regions */
-- select count(distinct(region)) as Unique_region from sales;

/* Find the number of Orders placed by each customer*/
-- select Customer_Name , count(Order_ID) as Order_Count from sales group by Customer_Name order by Order_Count desc;

/* Rank 5 products based on total sales using RANK() */
/* select Product_Name, sum(Total_Amount) as Total_Sales, RANK() over (order by sum(Total_Amount) desc) as Sales_Rank
from sales group by Product_Name limit 5;*/ 
