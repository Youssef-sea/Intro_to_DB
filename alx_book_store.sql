-- alx_book_store.sql

-- Create the database if it does not already exist
CREATE DATABASE IF NOT EXISTS alx_book_store;

-- Use the newly created database
USE alx_book_store;

-- Create the Authors table
CREATE TABLE Authors (
    AUTHOR_ID INT PRIMARY KEY,
    AUTHOR_NAME VARCHAR(215) NOT NULL
);

-- Create the Books table with a foreign key to the Authors table
CREATE TABLE Books (
    BOOK_ID INT PRIMARY KEY,
    TITLE VARCHAR(130) NOT NULL,
    AUTHOR_ID INT,
    PRICE DOUBLE NOT NULL,
    PUBLICATION_DATE DATE,
    FOREIGN KEY (AUTHOR_ID) REFERENCES Authors(AUTHOR_ID)
);

-- Create the Customers table
CREATE TABLE Customers (
    CUSTOMER_ID INT PRIMARY KEY,
    CUSTOMER_NAME VARCHAR(215) NOT NULL,
    EMAIL VARCHAR(215) NOT NULL UNIQUE,
    ADDRESS TEXT
);

-- Create the Orders table with a foreign key to the Customers table
CREATE TABLE Orders (
    ORDER_ID INT PRIMARY KEY,
    CUSTOMER_ID INT,
    ORDER_DATE DATE NOT NULL,
    FOREIGN KEY (CUSTOMER_ID) REFERENCES Customers(CUSTOMER_ID)
);

-- Create the Order_Detail table with foreign keys to the Orders and Books tables
CREATE TABLE Order_Detail (
    ORDERDETAILID INT PRIMARY KEY,
    ORDER_ID INT,
    BOOK_ID INT,
    QUANTITY DOUBLE NOT NULL,
    FOREIGN KEY (ORDER_ID) REFERENCES Orders(ORDER_ID),
    FOREIGN KEY (BOOK_ID) REFERENCES Books(BOOK_ID)
);