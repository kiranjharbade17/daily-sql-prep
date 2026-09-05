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