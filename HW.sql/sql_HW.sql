
Create database store;
Create table countries(
code int primary key,
name varchar(20) unique,
continent_name varchar(20) not null,
);

Create table users(
    id int primary key,
    full_name varchar(20),
    email varchar(30) unique,
    gender varchar(2) check (gender= 'F' or 'M'),
    date_of_birth varchar(15),
    created_at datetime,
    country_code int
);
create table orders(
    id int primary key ,
  user_id int ,
  status varchar(6) check( status='start' or 'finish'),
  created_at datetime,
);
create table order_products(
    order_id int,
    product_id int,
    quantity int serial default value 0
);
create table product(
    name varchar(10),
    price int default 0,
    status varchar(10),
    created_at datetime
);

insert into countries values (1,'Saudi Arabia','Middle east');
insert into users values (11,'Muneer','muneer@h.com','M','01/01/1991',current_date,113 );
insert into orders values (1121,1213,'start',current_date);
insert into order_products values (121,11,13);
insert into product values ('book',900,'available',current_date);

update countries set name='UAE' where code=1;
