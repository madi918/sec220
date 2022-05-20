create table cust_ord_association
(
    id           int auto_increment
        primary key,
    orders_id    int not null,
    warehouse_id int not null,
    constraint id
        unique (id)
);

create table customers
(
    id        int auto_increment
        primary key,
    firstname varchar(20) null,
    lastname  varchar(20) null,
    constraint id
        unique (id)
);

create table orders
(
    id          int auto_increment
        primary key,
    product     varchar(20) null,
    cost        int         null,
    customerId  int         null,
    warehouseId int         null,
    constraint id
        unique (id),
    constraint orders_ibfk_1
        foreign key (customerId) references customers (id)
);

create index customerId
    on orders (customerId);

create table warehouse
(
    id       int auto_increment
        primary key,
    location varchar(20) null,
    constraint id
        unique (id)
);


