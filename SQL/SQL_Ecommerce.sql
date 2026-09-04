use ecommerce;
select * from orders;

-- Total order
select count(*) as Total_orders from orders; 

-- Total sales
select sum(Total_sales) as Total_sales from orders; 

-- Total Product how much sales
select Product,sum(Net_Amount) as sales from orders group by Product order by sales desc ; 

-- Top city how much sales
select City,sum(Net_Amount) as sales from orders group by City order by sales desc ; 

-- Monthly how much sales 
select Month,sum(Net_Amount) as sales from orders group by Month ; 

-- highest profit product
select Product,sum(Profit) as profit from orders group by Product order by profit desc; 

--  payment mode distribution
select Payment_Mode,count(*) as payment from orders group by Payment_Mode; 
 
 -- order status is cancelled
 select Order_Status,count(*) from orders where Order_Status="Cancelled";