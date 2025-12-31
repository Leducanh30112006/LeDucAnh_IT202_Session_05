CREATE DATABASE LeDucAnh_IT202_Session05;
USE LeDucAnh_IT202_Session05;

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    total_amount DECIMAL(10, 2) NOT NULL,
    order_date DATETIME NOT NULL,
    status ENUM('pending', 'completed', 'canceled') NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO Orders (order_id, customer_id, total_amount, order_date, status)
VALUES
(1, 1, 1500.00, '2022-01-01 10:00:00', 'completed'),
(2, 2, 200.00, '2022-01-02 14:30:00', 'pending'),
(3, 3, 500.00, '2022-01-03 09:15:00', 'completed'),
(4, 1, 300.00, '2022-01-04 16:45:00', 'canceled'),
(5, 4, 100.00, '2022-01-05 11:30:00', 'completed'),
(6, 5, 750.00, '2022-01-06 13:20:00', 'pending'),
(7, 6, 400.00, '2022-01-07 15:10:00', 'completed'),
(8, 7, 600.00, '2022-01-08 12:00:00', 'canceled'),
(9, 8, 250.00, '2022-01-09 17:25:00', 'completed'),
(10, 9, 350.00, '2022-01-10 10:50:00', 'pending'),
(11, 10, 450.00, '2022-01-11 14:05:00', 'completed'),
(12, 11, 550.00, '2022-01-12 09:40:00', 'canceled');

/*Lấy danh sách đơn hàng đã hoàn thành*/
SELECT * FROM Orders 
WHERE status = 'completed';

/*Lấy các đơn hàng có tổng tiền > 5.000.000*/
SELECT * FROM Orders 
WHERE total_amount > 5000000;

/*Hiển thị 5 đơn hàng mới nhất*/
SELECT * FROM Orders 
ORDER BY order_date DESC LIMIT 5;
/*Hiển thị các đơn hàng đã hoàn thành, sắp xếp theo tổng tiền giảm dần*/
SELECT * FROM Orders 
WHERE status = 'completed' 
ORDER BY total_amount DESC;