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


# ON DELATE
-- agr hum user delete krte h jiska relavant address ho to mysql error throw krta h isliye hum on delete action use krte h
-- If you want addresses to be automatically deleted when the user is deleted 
-- CREATE TABLE addresses (
--  id INT AUTO_INCREMENT PRIMARY KEY,
--  user_id INT,
--  street VARCHAR(255),
--  city VARCHAR(100),
--  state VARCHAR(100),
--  pincode VARCHAR(10),
--  CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
-- );

# alter it later
ALTER TABLE adresses
ADD CONSTRAINT adresses_ibfk_1 FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE 
CASCADE;

INSERT INTO adresses (id, user_id, street, city, state, pincode)
VALUES
(1,1, 'MG Road', 'Indore', 'Madhya Pradesh', 452001),
(2,2,'Vijay Nagar', 'Indore', 'Madhya Pradesh', 452010),
(3,3, 'Park Street', 'Kolkata', 'West Bengal', 700016),
(4,4, 'Connaught Place', 'New Delhi', 'Delhi', 110001),
(5,5, 'Bandra West', 'Mumbai', 'Maharashtra', 400050),
(6,6, 'Kolar Road', 'Bhopal', 'Madhya Pradesh', 462042),
(7,7, 'Civil Lines', 'Nagpur', 'Maharashtra', 440001),
(8,8, 'Koramangala', 'Bangalore', 'Karnataka', 560034);

select*from adresses;




