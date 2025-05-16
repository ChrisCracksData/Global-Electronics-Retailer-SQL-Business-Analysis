-- Creates a CTE calulating the delivery time in days for each order.
WITH delivery_times AS
	(
	SELECT DISTINCT
		order_number,
		(delivery_date - order_date) AS delivery_time
	FROM sales
	WHERE delivery_date IS NOT NULL
	ORDER BY order_number
	)
-- Retrieves the average delivery time in days for each year and month.
SELECT
	TO_CHAR(order_date, 'YYYY-MM') AS year_month,
	ROUND(AVG(d.delivery_time), 2) AS avg_delivery_time
FROM sales s
LEFT JOIN delivery_times d
	ON s.order_number = d.order_number
GROUP BY year_month
ORDER BY year_month;