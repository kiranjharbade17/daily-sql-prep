use startersql;
create table adresses(
id int auto_increment primary key,
user_id int not null,
street varchar(200),
city varchar(100),
state varchar(100),
pincode int(10),
foreign key(user_id) references users(id)
);
select*from adresses;
