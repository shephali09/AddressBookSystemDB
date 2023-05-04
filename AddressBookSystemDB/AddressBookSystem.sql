show databases;
---- UC1 ----
create database address_book_service;
use address_book_service;

---- UC2 ----
create table address_book(id int not null auto_increment, first_name varchar(50) not null, 
last_name varchar(50) not null, address varchar(200) not null, city varchar(50) not null, 
state varchar(50) not null, zip int not null,  phone_number long not null, 
email varchar(50) not null, primary key(id)); 

describe address_book;

---- UC3 ----
insert into address_book(first_name,last_name,address,city,state,zip,phone_number,email) values 
('Shephali','Hiremath','JM Road','Kolhapur','Maharashtra',416115,8329596787,'shephali@gmail.com');

insert into address_book(first_name,last_name,address,city,state,zip,phone_number,email) values 
('Harshad','Sharma','MG Chowk','Pune','Maharashtra',412365,9595030156,'harshad2@gmail.com');

insert into address_book(first_name,last_name,address,city,state,zip,phone_number,email) values 
('Aditi','Patil','JK Nagar','Panjim','Goa',432567,7772014569,'aditi@gmail.com');

insert into address_book(first_name,last_name,address,city,state,zip,phone_number,email) values 
('Vidya','Swami','Shahapur','Banaras','UP',145789,7418523202,'vidya3@gmail.com');

---- UC4 ----
update address_book set address='Sangli Road', city='Mumbai', email='hshephali@gmail.com' where first_name='Shephali';
select * from address_book;

---- UC5 ----
delete from address_book where first_name = 'Aditi';
select * from address_book;

---- UC6 ----
select * from address_book where city = 'Pune';
select * from address_book where state = 'UP';

---- UC7 ----
select state, count(*) from address_book group by state;
select city, count(*) from address_book group by city;

---- UC8 ----
select * from address_book where city='Banaras' order by first_name asc;
select * from address_book where state='Maharashtra' order by first_name asc;

---- UC9 ----
alter table address_book add column type varchar(30) after last_name;
update address_book set type='Family' where id=1;
update address_book set type='Friend' where id=2;
update address_book set type='Profession' where id=4;

---- UC10 ----
select type, count(*) from address_book group by type;

---- UC11 ----
insert into address_book(first_name,last_name,type,address,city,state,zip,phone_number,email) values 
('Riya','Jain','Friend','Deccan','Hyderabad','Telengana',4321987,7687980967,'riyaj@gmail.com');

insert into address_book(first_name,last_name,type,address,city,state,zip,phone_number,email) values 
('Vaibhav','Patil','Family','Church Street','Patna','Bihar',453897,8788405865,'vaibhav23@gmail.com');

---- Uc13 ----
select * from address_book where city = 'Pune';

select state, count(*) from address_book group by state;
select city, count(*) from address_book group by city;

select * from address_book where city='Banaras' order by first_name asc;
select * from address_book where state='Maharashtra' order by first_name asc;

select type, count(*) from address_book group by type;