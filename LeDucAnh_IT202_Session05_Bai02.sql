CREATE DATABASE LeDucAnh_IT202_Session05;
USE LeDucAnh_IT202_Session05;

CREATE Table customers (
    customer_id INT PRIMARY KEY,
    full_name VARCHAR(225) NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
    city VARCHAR(225) ,
    status ENUM('active', 'inactive') NOT NULL
);


INSERT INTO customers (customer_id, full_name, Email, city, status)
VALUES
(1, 'John Doe', 'john@gmail.com', 'New York', 'active'),
(2, 'Jane Smith', 'jane@gmail.com', 'Los Angeles', 'active'),
(3, 'Bob Johnson', 'bob@gmail.com', 'Chicago', 'inactive'),
(4, 'Alice Brown', 'alice@gmail.com', 'Houston', 'active'),
(5, 'Charlie Davis', 'charlie@gmail.com', 'San Francisco', 'active'),
(6, 'Eva Wilson', 'eva@gmail.com', 'Miami', 'inactive'),
(7, 'Frank Miller', 'frank@gmail.com', 'Dallas', 'active'),
(8, 'Grace Lee', 'grace@gmail.com', 'Philadelphia', 'active'),
(9, 'Henry Taylor', 'henry@gmail.com', 'Atlanta', 'inactive'),
(10, 'Ivy Anderson', 'ivy@gmail.com', 'Seattle', 'active'),
(11, 'Jack Thomas', 'jack@gmail.com', 'Boston', 'active'),
(12, 'Kathy Moore', 'kathy@gmail.com', 'Austin', 'inactive');

SELECT * FROM customers;

/*Lấy khách hàng ở TP.HCM*/
SELECT * FROM customers 
WHERE city = 'Ho Chi Minh';
/*Lấy khách hàng đang hoạt động và ở Hà Nội*/
SELECT * FROM customers 
WHERE status = 'active' AND city = 'Ha Noi';
/*Sắp xếp danh sách khách hàng theo tên (A → Z)*/
SELECT * FROM customers 
ORDER BY full_name ASC;