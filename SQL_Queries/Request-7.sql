/* Get the complete report of the Gross sales amountfor the customer Atliq Exclusive” for each month */

select 
monthname(f.date) as month,
year(f.date) as Year,
concat(round(sum(gross_price *sold_quantity)/1000000,2),"M")
 as Gross_sales_amt 
from  
fact_gross_price g
join fact_sales_monthly f 
using(product_code,fiscal_year) 
join dim_customer c 
using(customer_code)
where customer = "Atliq Exclusive"
group by month,Year