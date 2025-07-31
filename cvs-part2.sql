SELECT manufacturer, COUNT(*) AS drug_count, SUM(cogs)-sum(total_sales) AS total_loss 
FROM pharmacy_sales
WHERE cogs>total_sales
GROUP BY manufacturer
ORDER BY total_loss DESC

-- identify manufacturer that resulted in losses
-- calculate total amount of losses (count)
-- output manifacturer name
-- sorted in descending order 