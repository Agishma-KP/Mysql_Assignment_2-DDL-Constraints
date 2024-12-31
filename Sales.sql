-- Create the Sales Database
CREATE DATABASE Sales;
USE Sales;

-- Create the Orders Table with Constraints
CREATE TABLE Orders (
    Order_Id INT PRIMARY KEY,
    Customer_name VARCHAR(100) NOT NULL,
    Product_Category VARCHAR(50) NOT NULL,
    Ordered_item VARCHAR(100) NOT NULL,
    Contact_No VARCHAR(15) UNIQUE NOT NULL
);

-- Add a New Column: order_quantity
ALTER TABLE Orders ADD order_quantity INT;

-- Rename the Table to sales_orders
ALTER TABLE Orders RENAME TO sales_orders;

-- Insert 10 Rows into the sales_orders Table
INSERT INTO sales_orders (Order_Id, Customer_name, Product_Category, Ordered_item, Contact_No, order_quantity) VALUES
(1, 'Alice', 'Electronics', 'Laptop', '9876543210', 1),
(2, 'Bob', 'Clothing', 'T-Shirt', '9876543211', 2),
(3, 'Charlie', 'Electronics', 'Smartphone', '9876543212', 1),
(4, 'Diana', 'Books', 'Fiction Novel', '9876543213', 3),
(5, 'Eve', 'Groceries', 'Rice', '9876543214', 5),
(6, 'Frank', 'Clothing', 'Jeans', '9876543215', 1),
(7, 'Grace', 'Electronics', 'Tablet', '9876543216', 2),
(8, 'Henry', 'Furniture', 'Chair', '9876543217', 4),
(9, 'Ivy', 'Books', 'Biography', '9876543218', 2),
(10, 'Jack', 'Groceries', 'Sugar', '9876543219', 10);

-- Retrieve Customer_name and Ordered_item
SELECT Customer_name, Ordered_item FROM sales_orders;

-- Update the Name of the Product for Any Row
UPDATE sales_orders
SET Ordered_item = 'Gaming Laptop'
WHERE Order_Id = 1;

-- Delete the sales_orders Table
DROP TABLE sales_orders;
