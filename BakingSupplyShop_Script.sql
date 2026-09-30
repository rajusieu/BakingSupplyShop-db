-- Rajindra Sieunarine
-- Prof. Yanilda Peralta Ramos
-- CIS 344
-- I was having some issues with my script, I used Gemini to resolve it 

DROP DATABASE IF EXISTS BakingSupplyShop;
CREATE DATABASE IF NOT EXISTS BakingSupplyShop;
USE BakingSupplyShop;

DROP TABLE IF EXISTS Cateogry;
CREATE TABLE Category (
    CategoryID INT AUTO_INCREMENT PRIMARY KEY,
    CategoryName VARCHAR(100) NOT NULL,
    Description VARCHAR(255)
);

DROP TABLE IF EXISTS Product;
CREATE TABLE Product (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(150) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    StockQuantity INT NOT NULL,
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

DROP TABLE IF EXISTS Customer;
CREATE TABLE Customer (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(15)
);

DROP TABLE IF EXISTS ShopOrder;
CREATE TABLE ShopOrder (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    OrderDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    TotalAmount DECIMAL(10, 2),
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

DROP TABLE IF EXISTS OrderItem;
CREATE TABLE OrderItem (
    OrderItemID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES ShopOrder(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

INSERT INTO Category (CategoryName, Description) VALUES 
('Flours & Sugars', 'Bulk dry ingredients for baking base'),
('Baking Tools', 'Tins/pans, whisks, spatulas, and molds'),
('Decorating & Toppings', 'Sprinklers, fondants, and food coloring'),
('Flavorings & Extracts', 'Vanilla, almond, and specialty extracts');

INSERT INTO Product (ProductName, Price, StockQuantity, CategoryID) VALUES 
('All-Purpose Flour 5lb', 4.99, 50, 1),
('Granulated White Sugar 4lb', 3.75, 40, 1),
('Silicone Spatula', 8.50, 25, 2),
('Non-Stick 9-inch Cake Pan', 12.99, 30, 2),
('Rainbow Sprinklers 8oz', 3.49, 60, 3),
('Vanilla Bean Paste 4oz', 14.99, 15, 4);

INSERT INTO Customer (FirstName, LastName, Email, Phone) VALUES 
('Muffin', 'Man', 'Drury_Lane@gmail.com', '917-705-4160'),
('Strawberry', 'Shortcake', 'Strawberry.land@email.com', '718-798-9619');

-- MuffinMan Order
INSERT INTO ShopOrder (TotalAmount, CustomerID) VALUES 
(13.49, 1);

-- Strawberry Shortcakes Order
INSERT INTO ShopOrder (TotalAmount, CustomerID) VALUES 
(27.98, 2);

-- Muffin bought Flour and Spatula
INSERT INTO OrderItem (OrderID, ProductID, Quantity, UnitPrice) VALUES 
(1, 1, 1, 4.99),
(1, 2, 1, 8.50);

-- Strawberry bought Cake Pan and Vanilla Bean Paste
INSERT INTO OrderItem (OrderID, ProductID, Quantity, UnitPrice) VALUES 
(2, 4, 1, 12.99),
(2, 6, 1, 14.99);

SELECT * FROM Category;
SELECT * FROM Product;
SELECT * FROM Customer;

SELECT 
    o.OrderID, 
    c.FirstName, 
    c.LastName, 
    o.OrderDate, 
    o.TotalAmount 
FROM ShopOrder o 
JOIN Customer c ON o.CustomerID = c.CustomerID;