# In which quarter of 2020, got the maximum total_sold_quantity?

SELECT quarter(date_add(date,interval 4 month)) as quarter,
concat(round(sum(sold_quantity)/1000000,2),'M') as Total_sold_quantity
 FROM fact_sales_monthly 
 where fiscal_year = 2020
 group by quarter
 order by Total_sold_quantity 
 

