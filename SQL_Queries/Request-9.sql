# 9. Which channel helped to bring more gross sales in the fiscal year 2021 and the percentage of contribution?

WITH cte AS
(SELECT
channel, ROUND(SUM(sold_quantity * gross_price)/1000000,2) AS gross_sales_mln FROM
dim_customer c
JOIN
fact_sales_monthly s USING (customer_code)
JOIN
fact_gross_price g USING (product_code)
WHERE
s.fiscal_year = 2021
GROUP BY channel
ORDER BY gross_sales_mln desc
)
SELECT
*,
CONCAT(ROUND((gross_sales_mln / SUM(gross_sales_mln) OVER ()) * 100, 2),'%') AS percentage
FROM cte
GROUP BY channel,gross_sales_mln;
