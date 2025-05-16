-- Creates a CTE calculating the total value of each order.
WITH order_totals AS
	(
	SELECT
		s.order_number,
		SUM(p.unit_price_usd * s.quantity) AS order_total,
		s.store_key
	FROM sales s
	JOIN products p
		ON s.product_key = p.product_key
	GROUP BY s.order_number, s.store_key
	)
-- Queries the average order value by store type.
SELECT
	CASE
		WHEN store_key = 0 THEN 'Online'
		WHEN store_key != 0 THEN 'In-Store'
		ELSE 'Unknown'
	END AS store_type,
	ROUND(AVG(order_total), 2) AS average_order_value
FROM order_totals
GROUP BY store_type;