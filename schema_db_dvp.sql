DROP DATABASE IF EXISTS supplements;
create database supplements;

use supplements;

CREATE TABLE customers(
customer_id int auto_increment ,
age int not null,
customer_name varchar(225) DEFAULT NULL,
customer_phone varchar (20) DEFAULT NULL,
customer_email varchar(200) NOT NULL UNIQUE,
customer_password varchar (225) DEFAULT NULL,
street_address varchar(225) DEFAULT NULL,
city varchar(50) DEFAULT NULL,
state varchar(50) DEFAULT NULL,
zip varchar(50) DEFAULT NULL,
spending_score int not null,
voucher_promo binary(1),

PRIMARY KEY(`customer_id`)
 ) ;
 
CREATE TABLE categories (
	category_id INT NOT NULL ,
	category_name VARCHAR (255) NOT NULL,
    
    PRIMARY KEY(`category_id`)
);

CREATE TABLE brands (
	brand_id INT ,
	brand_name VARCHAR (255) NOT NULL,
    
    PRIMARY KEY(`brand_id`)
);

CREATE TABLE products (

	product_id INT auto_increment,  
	product_name VARCHAR (255) NOT NULL,
	brand_id INT NOT NULL,
	category_id INT NOT NULL,
	unit_cost float (6, 2) NOT NULL,
    inventory int NOT NULL DEFAULT 0,
    
    PRIMARY KEY(`product_id`),
	FOREIGN KEY (category_id) REFERENCES categories (category_id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (brand_id) REFERENCES brands (brand_id) ON DELETE CASCADE ON UPDATE CASCADE
    
);

CREATE TABLE ratings(

	rating_id int auto_increment,
	product_id INT not null,
	customer_id int not null,
    rating_star int not null,
    
    PRIMARY KEY(`rating_id`),
	FOREIGN KEY (product_id) REFERENCES products (product_id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (customer_id) REFERENCES customers (customer_id) ON DELETE CASCADE ON UPDATE CASCADE
    
);



CREATE TABLE log_table(
log_id int auto_increment,
product_id int not null,
pre_unit_cost float (6, 2) NOT NULL,
pos_unit_cost float (6, 2) NOT NULL,
PRIMARY KEY(`log_id`),
FOREIGN KEY (product_id) REFERENCES products (product_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE company (

	warehouse_id int  auto_increment,
	company_name VARCHAR (255) NOT NULL,
	phone VARCHAR (25) NOT NULL,
	email VARCHAR (255) NOT NULL,
    website VARCHAR (255) NOT NULL,
	street VARCHAR (255) NOT NULL,
	city VARCHAR (255) NOT NULL,
	state VARCHAR (15) NOT NULL,
	zip_code VARCHAR (5) NOT NULL,
    
    primary key(`warehouse_id`)
);

CREATE TABLE staff (
	staff_id INT auto_increment ,
	staff_name VARCHAR (225) NOT NULL,
	email VARCHAR (255) NOT NULL ,
	phone VARCHAR (25) NOT NULL,
    salary float(9,2) NOT NULL,
    warehouse_id int not null,
    job varchar(45) NOT NULL,
	hire_date date not null,
    PRIMARY KEY(`staff_id`),
    FOREIGN KEY (warehouse_id) REFERENCES company (warehouse_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE payment_method(
payment_method_id int auto_increment not null,
payment_type varchar(30) not null,
PRIMARY KEY(`payment_method_id`)
) ;

CREATE TABLE invoices (
	invoice_id INT auto_increment,
	customer_id INT NOT NULL,
	order_date DATE NOT NULL,
	date_deadline DATE NOT NULL,
	shipped_date DATE,
	warehouse_id INT NOT NULL,
    subtotal float(9,2) NOT NULL DEFAULT 0,
    item_discount float(4,2) NOT NULL DEFAULT 0,
    discount_amount float (6,2) NOT NULL DEFAULT 0,
    tax_rate float(2,2) NOT NULL ,
    tax_amount float(6,2) NOT NULL ,
    shipping_cost float(3,2) NULL,
    amount_net float(9,2) NOT NULL DEFAULT 0,
    payment_method_id int not null,
    PRIMARY KEY(`invoice_id`),
    FOREIGN KEY (payment_method_id) REFERENCES payment_Method(payment_method_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (warehouse_id) REFERENCES company(warehouse_id) ON DELETE CASCADE ON UPDATE CASCADE
);

create table invoices_details (
invoice_detail_id int auto_increment not null,
invoice_id int not null,
product_id int not null,
quantity int not null,
unit_cost float(6,2) not null,
amount float(9,2),
primary key(invoice_detail_id),
foreign key(invoice_id) references invoices(invoice_id) ON DELETE CASCADE ON UPDATE CASCADE,
foreign key(product_id) references products(product_id) ON DELETE CASCADE ON UPDATE CASCADE
);

create table suppliers(
supplier_id int auto_increment not null,
supplier_name varchar(50) not null,
primary key(supplier_id)
);

create table purchases(
purchase_id int auto_increment not null,
supplier_id int not null,
product_id int not null,
purchase_date date not null,
inventory_bought int not null,
amount float(6,2) not null,

primary key(purchase_id),
foreign key(product_id) references products(product_id) ON DELETE RESTRICT ON UPDATE CASCADE,
foreign key(supplier_id) references suppliers(supplier_id) ON DELETE RESTRICT ON UPDATE CASCADE
);

