use startersql;
create table admin_users(
id int primary key,
name varchar(100),
email varchar(100),
gender ENUM('male', 'female','other'),
date_of_birth date,
salary int);

INSERT INTO admin_users (id, name, email, gender, date_of_birth, salary) VALUES
(101, 'Anil Kumar', 'anil@example.com', 'Male', '1985-04-12', 60000),
(102, 'Pooja Sharma', 'pooja@example.com', 'Female', '1992-09-20', 58000),
(103, 'Rakesh Yadav', 'rakesh@example.com', 'Male', '1989-11-05', 54000),
(104, 'Fatima Begum', 'fatima@example.com', 'Female', '1990-06-30', 62000);

select*from admin_users;

# UNION
-- (without duplicate values)
select name, email, 'users' as role from users
union
select  name, email, 'admin' as role from admin_users;

#UNION ALL
-- (with duplicate values)
select name from users
union all
select name from admin_users;


select name, email, date_of_birth, 'users' as role from users
union all
select name, email, date_of_birth, 'admin' as role from admin_users
order by date_of_birth DESC;
