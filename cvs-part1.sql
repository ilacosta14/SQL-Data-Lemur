SELECT drug,  sum(total_sales)- sum(cogs) AS total_profit
FROM pharmacy_sales
GROUP BY drug
ORDER BY total_profit DESC
LIMIT 3
-- top 3 most profitable drugs sold, and how much prfit they made
-- highest to lowest total profit
-- Total Profit = Total Sales - Cost of Goods Sold