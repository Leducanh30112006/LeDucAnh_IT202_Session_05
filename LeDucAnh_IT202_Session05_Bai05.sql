CREATE DATABASE LeDucAnh_IT202_Session05;
USE LeDucAnh_IT202_Session05;

/*Trang 1: hiển thị 5 đơn hàng mới nhất*/
SELECT * FROM Orders ORDER BY order_date DESC LIMIT 5;      
/*Trang 2: hiển thị 5 đơn hàng tiếp theo*/
SELECT * FROM Orders ORDER BY order_date DESC LIMIT 5 OFFSET 5;
/*Trang 3: hiển thị 5 đơn hàng tiếp theo*/
SELECT * FROM Orders ORDER BY order_date DESC LIMIT 5 OFFSET 10;
/*Chỉ hiển thị các đơn hàng chưa bị hủy*/
SELECT * FROM Orders WHERE status != 'canceled' ORDER BY order_date DESC;