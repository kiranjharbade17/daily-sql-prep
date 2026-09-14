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

# renaming a table 
rename table users to customer;
select* from customer;
rename table customer to users;

#altetring a table
# Alter table
-- -add a column 
-- -drop a column
-- -modify a column type
alter table users add column is_active boolean default false;
alter table users drop column is_active;
alter table users modify name varchar(150);

# querying data using select
select*from users;
select name, email from users;


#filtering with where
# =, !=, <>, < and >
select*from users where gender = 'male';
select * from users where gender != 'male';
select * from users where gender <> 'male';
select * from users where date_of_birth > '1995-01-01';
select * from  users where id > 25;

#working with null
select*from users where date_of_birth is null;
select*from users where date_of_birth is not null;

#between
select*from users where id between '23' and '27';
select*from users where date_of_birth between '1999-01-01' and '2005-01-01';
# in
select*from users where gender in('male','female');
# and/or
select*from users where gender='male' && date_of_birth>'1999-01-01';
select*from users where gender ='female' || gender='male';
select*from users where id='22' or id='2';

-- querying data 
select*from users
where gender = 'male' 
order by date_of_birth desc;
select*from users where gender='female' limit 2;

alter table users add column salary int;
select*from users;

select count(*)
from users;

update users set salary = 90000 where id=22;
update users set salary = 95000 where id=23;
update users set salary = 80000 where id=24;
update users set salary = 40000 where id=25;
update users set salary = 30000 where id=26;
update users set salary = 70000 where id=27;
update users set salary = 100000 where id=28;

# or update + case se ek hi query m ho jaega
update users set salary = case id
when 22 then 50000
when 23 then 50000
when 24 then 50000
when 25 then 50000
when 26 then 50000
when 27 then 50000
when 28 then 50000
end;
select*from users;

update users set salary = 45000 where id=22;
update users set salary = 50000, name= 'parth', email = 'parth@example.com' where id=23;

#questions
-- update users
-- set salary = 70000
-- where id=5;

-- update users
-- set salary = salary+10000
-- where salary<60000;

-- update users
-- set name = 'aisha  khan'
-- where email = 'aisha@example.com';

#deleting data
-- delete from users where salary<65000;
delete from users where id=22;
select*from users;

#Delete
-- where condition k sath selected rows ko hi delete krta h
-- delete from users where id=1;

#Truncate
-- sari rows/data ek bar m delete kr deta h pr table structure jesa ka vesa rkhta h
-- truncate table users;

#Drop
-- entire table delete with structure
-- drop table users;

insert into users(name, email, gender, date_of_birth) values
( 'Alice', 'alice@example.com', 'Female', '1995-05-14');

insert into users(id, name, email, gender, date_of_birth)values
(1,'kittu','kittu@gmail.com', 'male', '2006-02-05');

select id,name from users;

update users
set id=2 where name='parth';

update users
set id = case id 
when 25 then 4
when 26 then 5 
when 27 then 6 
when 28 then 7 
when 29 then 8 
else id
end;
update users
set id=8 where id=37;
select*from users

#SQL Functions

 -- 1) Aggregate functions
 
 -- this returns a single value from a set of rows
 select count(*) from users;
 select count(*) from users where gender='female';
 
 select  max(salary) as max_salary, min(salary) as min_salary from users;
 
 select sum(salary)as total_payout from users;
 select avg(salary)as avg_salary from users;
 
 select gender, sum(salary) from users
 group by gender;

 select*from users;
 
-- 2) String functions
 
select name, length(name) as name_length from users;
select name, lower(name) as lowercase_name from users;
select name, upper(name) as uppercase_name from users;
select concat(name, '<', email, 'z') as
user_concat from users;

# 3) Date function
select now();
select name, year(date_of_birth) as birth_year from users;
select name, month(date_of_birth) as birth_month from users;
select name, day(date_of_birth) as birth_day from users;

select name, datediff(curdate(), date_of_birth)
as days_lived from users;

select name, timestampdiff(year, date_of_birth, curdate()) as age from users;

# 4) mathematical functions
select salary,
round(salary) as rounded,
floor(salary) as floored,
ceil(salary) as ceiled
from users;

select id, mod(id,2) as remainder from users;

#5) conditional functions

select name, gender,
if(gender='female', 'ha', 'na') as is_female
from users;

# autocommit and transactions


 
 




