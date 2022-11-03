/*
--------------------------------------------------------------------
© 2017 sqlservertutorial.net All Rights Reserved
--------------------------------------------------------------------
Name   : BikeStores
Link   : http://www.sqlservertutorial.net/load-sample-database/
Version: 1.0
--------------------------------------------------------------------
*/

drop database if exists BikeStores;

create database BikeStores;

use BikeStores;

CREATE TABLE production_brands (
    brand_id INT AUTO_INCREMENT PRIMARY KEY,
    brand_name VARCHAR(40)
);

CREATE TABLE production_categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(40)
);


CREATE TABLE production_products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(80),
    brand_id INT,
    category_id INT,
    model_year YEAR,
    list_price DECIMAL(7, 2),
    foreign key(brand_id) references production_brands(brand_id),
    foreign key(category_id) references production_categories(category_id)
);

CREATE TABLE sales_customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(40),
    last_name VARCHAR(40),
    phone VARCHAR(20),
    email VARCHAR(100),
    street VARCHAR(40),
    city VARCHAR(30),
    state VARCHAR(2),
    zip_code VARCHAR(5)
);

CREATE TABLE sales_stores (
    store_id INT AUTO_INCREMENT PRIMARY KEY,
    store_name VARCHAR(40),
    phone VARCHAR(20),
    email VARCHAR(100),
    street VARCHAR(40),
    city VARCHAR(30),
    state VARCHAR(2),
    zip_code VARCHAR(5)
);

CREATE TABLE production_stocks (
    store_id INT,
    product_id INT,
    quantity INT,
    foreign key(store_id) references sales_stores(store_id),
    foreign key(product_id) references production_products(product_id)
);

CREATE TABLE sales_staffs (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(40),
    last_name VARCHAR(40),
    email VARCHAR(100),
    phone VARCHAR(20),
    active_status INT,
    store_id INT,
    manager_id INT
);


CREATE TABLE sales_orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_status INT,
    order_date DATE,
    required_date DATE,
    shipped_date DATE,
    store_id INT,
    staff_id INT,
    foreign key(customer_id) references sales_customers(customer_id),
    foreign key(store_id) references sales_stores(store_id),
    foreign key(staff_id) references sales_staffs(staff_id)
);

CREATE TABLE sales_order_items (
    order_id INT,
    item_id INT,
    product_id INT,
    quantity INT,
    list_price DECIMAL(7, 2),
    discount DECIMAL(3, 2),
    foreign key(order_id) references sales_orders(order_id),
    foreign key(product_id) references production_products(product_id)
);