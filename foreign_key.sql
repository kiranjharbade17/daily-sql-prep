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

show create table
adresses;

#for delete the foreign key
alter table adresses drop foreign key adresses_ibfk_1;

#for delete foreign key column
# alter table adresses drop column user_id;

# add foreign key 
ALTER TABLE adresses
ADD CONSTRAINT adresses_ibfk_1 FOREIGN KEY (user_id) REFERENCES users(id);



