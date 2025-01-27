/* Generate a report which contains the top 5 customers who received an average high
pre_invoice_discount_pct for the fiscal year 2021 and in the Indian market.*/


SELECT  c.customer_code , c.customer, round(avg(pre_invoice_discount_pct)*100,2)
 as avg_pre_discount FROM 
fact_pre_invoice_deductions pre
join dim_customer c 
using(customer_code)
where fiscal_year=2021 and market="india"
group by c.customer_code 
order by avg_pre_discount desc
limit 5

;	