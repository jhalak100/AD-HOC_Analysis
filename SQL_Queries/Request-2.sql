# 2. What is the percentage of unique product increase in 2021 vs. 2020?

	WITH unq1 AS (
		SELECT COUNT(DISTINCT product_code) AS unique202
		FROM fact_sales_monthly
		WHERE fiscal_year = 2020
	),
	unq2 AS (
		SELECT COUNT(DISTINCT product_code) AS unique21
		FROM fact_sales_monthly
		WHERE fiscal_year = 2021
	),
	cet2 AS (	
		SELECT 
			unique202,
			unique21,
			round((unique21 - unique202) / unique202*100,2) 
			AS chng 
		FROM unq1, unq2
	)
	SELECT * 
	FROM cet2;
