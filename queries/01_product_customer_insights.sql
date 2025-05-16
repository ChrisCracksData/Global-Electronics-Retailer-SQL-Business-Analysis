-- Returns each product category, its number of unique products, and the percentage they represent of the total product base.
SELECT
    category,
    COUNT(DISTINCT(regexp_replace(product_name, '\s+\S+$', ''))) AS num_of_products,
    ROUND(COUNT(DISTINCT(regexp_replace(product_name, '\s+\S+$', ''))) * 100.0 / 
          SUM(COUNT(DISTINCT(regexp_replace(product_name, '\s+\S+$', '')))) OVER (), 2) 
          AS product_percentage
FROM products
GROUP BY category
ORDER BY num_of_products DESC;

-- Returns each country, its number of unique customers, and the percentage they represent of the total customer base.
SELECT
	country,
	COUNT(DISTINCT customer_key) AS num_of_customers,
	ROUND(COUNT(DISTINCT customer_key) * 100.0 / SUM(COUNT(DISTINCT customer_key)) OVER (), 2)
	AS customer_percentage
FROM customers
GROUP BY country
ORDER BY num_of_customers DESC;