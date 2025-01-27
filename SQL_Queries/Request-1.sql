# Provide the list of markets in which customer "Atliq Exclusive" operates its business in the APAC region?

SELECT 
distinct market ,customer,region 
FROM dim_customer 
where region = "APAC" and customer = "Atliq Exclusive" ;