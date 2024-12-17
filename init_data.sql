CREATE DATABASE IF NOT EXISTS InventorySystem;
USE InventorySystem;

-- Create Stores table
CREATE TABLE IF NOT EXISTS Stores (
    StoreID INT PRIMARY KEY AUTO_INCREMENT,
    Location VARCHAR(50)
);

-- Create Products table
CREATE TABLE IF NOT EXISTS Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(50),
    Stock INT
);

-- Create Transactions table
CREATE TABLE IF NOT EXISTS Transactions (
    TransactionID INT PRIMARY KEY AUTO_INCREMENT,
    StoreID INT,
    ProductID INT,
    Quantity INT,
    TransactionDate DATETIME,
    FOREIGN KEY (StoreID) REFERENCES Stores(StoreID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Insert Stores
INSERT INTO Stores (Location) VALUES
('New York'), ('Los Angeles'), ('Chicago'), ('Houston'), ('San Francisco'),
('Seattle'), ('Miami'), ('Boston'), ('Dallas'), ('Atlanta'),
('Denver'), ('Phoenix'), ('Detroit'), ('San Diego'), ('Portland'),
('Las Vegas'), ('Orlando'), ('Minneapolis'), ('Austin'), ('Philadelphia');

-- Insert Products
INSERT INTO Products (ProductName, Stock) VALUES
('Laptop', 50), ('Phone', 200), ('Tablet', 100), ('Monitor', 75),
('Keyboard', 120), ('Mouse', 150), ('Printer', 40), ('Headphones', 180),
('Speakers', 90), ('Webcam', 60), ('Hard Drive', 80), ('SSD', 70),
('RAM', 110), ('Motherboard', 50), ('Graphics Card', 30), ('CPU', 25),
('Power Supply', 45), ('Charger', 100), ('USB Cable', 200), ('Router', 40);

-- Insert Transactions
INSERT INTO Transactions (StoreID, ProductID, Quantity, TransactionDate) VALUES
(1, 1, -5, NOW()), (2, 2, -10, NOW()), (3, 3, -3, NOW()), (4, 4, -2, NOW()),
(5, 5, -7, NOW()), (6, 6, -8, NOW()), (7, 7, -1, NOW()), (8, 8, -9, NOW()),
(9, 9, -4, NOW()), (10, 10, -5, NOW()), (11, 11, -6, NOW()), (12, 12, -5, NOW()),
(13, 13, -3, NOW()), (14, 14, -2, NOW()), (15, 15, -1, NOW()), (16, 16, -7, NOW()),
(17, 17, -8, NOW()), (18, 18, -10, NOW()), (19, 19, -5, NOW()), (20, 20, -4, NOW());
