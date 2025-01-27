/* Provide a report with all the unique product counts for each segment and sort them in descending order of
product counts. */

SELECT segment,count(product) as Count_of_product
FROM 
dim_product
group by segment 
order by Count_of_product desc 	;