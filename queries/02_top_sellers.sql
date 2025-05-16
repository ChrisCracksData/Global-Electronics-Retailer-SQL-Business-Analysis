-- Creates a CTE calculating the profit for each product.
WITH product_profits AS
	(
	SELECT
		product_key,
		 SUBSTRING(product_name, 1, LENGTH(product_name)
		 - LENGTH(SPLIT_PART(REVERSE(product_name), ' ', 1)) - 1) AS product_name,
		(unit_price_usd - unit_cost_usd) AS profit_per_unit
	FROM products
	)
-- Retrieves the top 10 products with the highest total profit.
SELECT
	p.product_name,
	SUM(p.profit_per_unit * s.quantity) AS total_profit
FROM product_profits p
JOIN sales s
	ON p.product_key = s.product_key
GROUP BY p.product_name
ORDER BY total_profit DESC
LIMIT 10;