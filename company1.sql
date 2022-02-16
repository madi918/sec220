create database 'company';
USE company;
CREATE TABLE customers (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    firstname varchar(20),
    lastname varchar(20),
    company varchar(20),
    PRIMARY KEY (id)
);
CREATE TABLE orders (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    product varchar(20),
    cost int,
    customerId int,
    PRIMARY KEY (id),
    FOREIGN KEY (customerId) REFERENCES customers(id)
);
INSERT INTO customers (firstname, lastname, company) VALUES ( 'madi', 'mccauley', 'google');
INSERT INTO customers (firstname, lastname, company) VALUES ( 'cass', 'collins', 'verizon');

INSERT INTO orders (product, cost, customerId) VALUES ('phone', '500', 1);
INSERT INTO orders (product, cost, customerId) VALUES ('computer', '1000', 1);
