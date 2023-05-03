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