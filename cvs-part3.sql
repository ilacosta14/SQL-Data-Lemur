SELECT  manufacturer, concat('$', round(sum(total_sales)/ 1000000), ' million')  as sale

FROM pharmacy_sales

GROUP BY manufacturer

ORDER BY sum(total_sales) DESC

-- find total drug sales for manufacturer
-- round total_sales to nearest million
-- report results in descending order of total_sales
-- if duplicates is true, sort by alphabetical ORDER
--  format your results as follows: "$36 million".