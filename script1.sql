create  database startersql;
use startersql;
create table users(
id int auto_increment primary key,
name varchar(50) not null,
email varchar(50) unique not null,
gender enum('male','female','other'),
date_of_birth date ,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
insert into users  (name, email, gender, date_of_birth) values
( 'Alice', 'alice@example.com', 'Female', '1995-05-14'),
('Bob', 'bob@example.com', 'Male', '1990-11-23'),
('Charlie', 'charlie@example.com', 'Other', '1988-02-17'),
('David', 'david@example.com', 'Male', '2000-08-09'),
('Eva', 'eva@example.com', 'Female', '1993-12-30'),
('omi', 'omi@gmail.com', 'Female', '2005-11-17'),
('kiran', 'kiran@gmail.com','Female','2006-11-11');

select*from users;
select name, email from users;

#filtering with where

select*from users where gender = 'male';
select * from users where gender != 'male';
select * from users where gender <> 'male';
select * from users where date_of_birth > '1995-01-01';
select * from  users where id > 25;
select * from user where id= 5;

