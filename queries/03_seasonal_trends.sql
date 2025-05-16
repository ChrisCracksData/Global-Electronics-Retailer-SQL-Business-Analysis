-- Creates a CTE calculating the order volume for each year and month.
WITH order_volumes AS
	(
	SELECT
		DATE_TRUNC('month', order_date)::date AS date,
		COUNT(DISTINCT order_number) AS order_volume
	FROM sales
	GROUP BY date
	)
-- Retrieves the average order volume of each month.
SELECT
	TO_CHAR(date, 'mm-Month') AS month,
	ROUND(AVG(order_volume), 0) AS avg_order_volume
FROM order_volumes
GROUP BY month
ORDER BY month;