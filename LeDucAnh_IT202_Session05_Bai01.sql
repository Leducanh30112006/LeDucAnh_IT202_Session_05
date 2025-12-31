CREATE DATABASE LeDucAnh_IT202_Session05;

USE LeDucAnh_IT202_Session05;

CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(225) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Stock INT NOT NULL,
    sold_quantity INT NOT NULL,
    status ENUM('active', 'inactive') NOT NULL
);


INSERT INTO Product (ProductID, ProductName, Price, Stock, sold_quantity, status)
VALUES
(1, 'Laptop', 1500.00, 10, 5, 'active'),
(2, 'Mouse', 20.00, 100, 50, 'active'),
(3, 'Keyboard', 50.00, 50, 20, 'active'),
(4, 'Monitor', 300.00, 20, 10, 'active'),
(5, 'Printer', 200.00, 0, 0, 'inactive'),
(6, 'USB Cable', 10.00, 200, 150, 'active'),
(7, 'Webcam', 80.00, 15, 5, 'active'),
(8, 'Headphone', 120.00, 0, 0, 'inactive'),
(9, 'Tablet', 600.00, 8, 3, 'active'),
(10, 'Speaker', 150.00, 12, 7, 'active'),
(11, 'Smartphone', 800.00, 25, 15, 'active'),
(12, 'Charger', 25.00, 150, 80, 'active');


/*Lấy toàn bộ sản phẩm đang có trong hệ thống*/
SELECT * FROM Product;

/*Lấy danh sách sản phẩm đang bán (status = 'active')*/
SELECT * FROM Product WHERE status = 'active';

/*Lấy các sản phẩm có giá lớn hơn 1.000.000*/
SELECT * FROM Product WHERE Price > 1000000;

/*Hiển thị danh sách sản phẩm đang bán, sắp xếp theo giá tăng dần*/
SELECT * FROM Product WHERE status = 'active' ORDER BY Price ASC;

