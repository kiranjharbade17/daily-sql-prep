CREATE DATABASE quick_mart_db;
USE quick_mart_db;

CREATE TABLE users(
user_id   INT   PRIMARY KEY   AUTO_INCREMENT,
name   VARCHAR(50)   NOT NULL,
city   VARCHAR(50)  NOT NULL,
join_date   DATE
);

CREATE TABLE product(
product_id   int  PRIMARY KEY  auto_increment,
product_name  VARCHAR(50)  NOT NULL,
category   VARCHAR(50)  NOT NULL,
price DECIMAL(10,2)  NOT NULL
);

CREATE TABLE orders(
order_id INT auto_increment PRIMARY KEY,
user_id INT,
product_id INT,
quantity INT NOT NULL,
order_date DATE,
FOREIGN KEY(user_id) REFERENCES users(user_id),
FOREIGN KEY(product_id) REFERENCES product(product_id)
);
use quick_mart_db;
insert  into users(name, city, join_date) values
('Omi', 'indore', '15-09-26'),
('Kiran', 'indore', '1-09-24'),
('Kartik', 'indore', '14-09-24'),
('Khushi', 'indore', '23-08-25'),
('Bhavna', 'indore', '7-11-26'),
('Ankit', 'indore', '17-11-26');

insert into product(product_name, category, price) values
('Amul Milk 1L', 'Dairy', 66.00),
('Dark Fantasy Biscuits', 'Snacks', 40.00),
('Basmati Rice 5kg', 'Grains', 450.00);

INSERT INTO orders (user_id, product_id, quantity, order_date) VALUES 
(1, 1, 2, '2026-03-02'),
(2, 3, 1, '2026-03-03'),
(3, 2, 3, '2026-03-04');

-- select*from user

DELETE FROM users WHERE user_id >= 4;
use quick_mart_db;

select*from users