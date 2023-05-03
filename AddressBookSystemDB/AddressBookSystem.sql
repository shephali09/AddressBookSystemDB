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