-- alx_book_store.sql

-- create the database if it does not already exist
CREATE DATABASE IF NOT EXISTS alx_book_store;

-- use the newly created database
use alx_book_store;

-- create the authors table
CREATE TABLE Authors (
    author_id int primary key,
    author_name varchar(215) not null
);

-- create the books table with a foreign key to the authors table
CREATE TABLE Books (
    book_id int primary key,
    title varchar(130) not null,
    author_id int,
    price double not null,
    publication_date date,
    foreign key (author_id) references Authors(author_id)
);

CREATE TABLE customers (
    customer_id int primary key,
    customer_name varchar(215) not null,
    email varchar(215) not null unique,
    address text
);

-- create the orders table with a foreign key to the customers table
CREATE TABLE Orders (
    order_id int primary key,
    customer_id int,
    order_date date not null,
    foreign key (customer_id) references Customers(customer_id)
);

-- create the order_details table with foreign keys to the orders and books tables
CREATE TABLE Order_Details (
    orderdetailid int primary key,
    order_id int,
    book_id int,
    quantity double not null,
    foreign key (order_id) references Orders(order_id),
    foreign key (book_id) references Books(book_id)
);