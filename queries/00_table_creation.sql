-- Creates table for exchange rates
CREATE TABLE exchange_rates (
	date DATE,
	currency VARCHAR(5),
	exchange DECIMAL(12, 6),
	PRIMARY KEY (date, currency)
);

-- Creates table for store information
CREATE TABLE stores (
	store_key INT PRIMARY KEY,
	country VARCHAR(50),
	state VARCHAR(50),
	square_meters INT,
	open_date DATE
);

-- Creates table for customer information
CREATE TABLE customers (
	customer_key INT PRIMARY KEY,
	gender VARCHAR(10),
	name VARCHAR(50),
	city VARCHAR(50),
	state_code VARCHAR(50),
	state VARCHAR(50),
	zip_code VARCHAR(11),
	country VARCHAR(50),
	continent VARCHAR(50),
	birthday DATE
);

-- Creates table for product information
CREATE TABLE products (
	product_key INT PRIMARY KEY,
	product_name VARCHAR(100),
	brand VARCHAR(100),
	color VARCHAR(100),
	unit_cost_usd DECIMAL(10,2),
	unit_price_usd DECIMAL(10,2),
	subcategory_key INT,
	subcategory VARCHAR(100),
	category_key INT,
	category VARCHAR(100)
);

-- Creates table for sales data
CREATE TABLE sales (
	order_number INT,
	line_item INT,
	order_date DATE,
	delivery_date DATE,
	customer_key INT,
	store_key INT,
	product_key INT,
	quantity INT,
	currency_code VARCHAR(5),
	PRIMARY KEY (order_number, line_item),
	FOREIGN KEY (customer_key) REFERENCES customers(customer_key),
	FOREIGN KEY (store_key) REFERENCES stores(store_key),
	FOREIGN KEY (product_key) REFERENCES products(product_key),
	FOREIGN KEY (order_date, currency_code) REFERENCES exchange_rates(date, currency)
);