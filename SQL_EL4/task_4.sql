use management;

-- Step 1: Create Table
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    product VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(10, 2),
    store VARCHAR(50)
);

-- Step 2: Insert Sample Data
INSERT INTO sales (sale_id, product, category, quantity, price, store) VALUES
(1, 'Soap', 'Hygiene', 10, 30, 'Store A'),
(2, 'Shampoo', 'Hygiene', 5, 80, 'Store A'),
(3, 'Biscuit', 'Food', 20, 10, 'Store B'),
(4, 'Noodles', 'Food', 10, 15, 'Store A'),
(5, 'Detergent', 'Cleaning', 8, 50, 'Store B'),
(6, 'Toothpaste', 'Hygiene', 6, 25, 'Store B'),
(7, 'Rice', 'Food', 30, 60, 'Store A');

-- Step 3: Aggregation + Grouping + Having (All in One)
SELECT 
    category,
    COUNT(*) AS total_products,
    SUM(quantity) AS total_quantity_sold,
    AVG(price) AS average_price,
    MIN(price) AS lowest_price,
    MAX(price) AS highest_price
FROM 
    sales
GROUP BY 
    category
HAVING 
    SUM(quantity) > 15;
