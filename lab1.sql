-- create database called «lab1»
create database lab1;

-- create a table named "clients" with the following fields :
-- • client_id (auto-incrementing integer) -> id serial primary key
-- • first_name (string, max length 60)
-- • last_name (string, max length 60)
-- • email (string, max length 100)
-- • date_joined (date)
create table clients (
    client_id serial, -- client_id serial primary key
    first_name varchar(60),
    last_name varchar(60),
    email varchar(100),
    date_joined date
);

-- add a column named "status" to the "clients" table (integer, 0 or 1)
alter table clients
    add column status integer;

-- change the type of the "status" column to boolean
alter table clients
    alter column status type boolean using status :: boolean;

-- alter table clients
    -- alter column status set data type boolean; -- or alter column status type boolean;

-- set a default value of true for the "status" column
alter table clients
    alter column status set default true;

-- add a primary key constraint to the client_id column
alter table clients
    add constraint pk_client_id primary key (client_id);
    -- add primary key(client_id);

-- insert into clients (first_name, last_name, email,date_joined, status)
--      values ('Mark', 'Lee', 'rem@nct.com', '2013-12-16', true),
--             ('Peter', 'Lee', 'fullsun@nct.com, '2014-07-17', false);

select * from clients;

-- create another table named "orders" with the following fields :
-- • order_id (auto-incrementing integer) -> -> order_id serial primary key
-- • order_name (string, max length 100)
-- • client_id (integer, foreign key referencing the "clients" table)
create table orders (
    order_id serial, -- order_id serial primary key
    order_name varchar(100),
    client_id integer,
    constraint pk_orders_id primary key(order_id),
    foreign key (client_id) references clients(client_id)
);

-- insert into orders (order_name, client_id)
--      values ('order №990802', 2),
--             ('order №000606', 6);

select * from clients;

-- delete the "orders" table
drop table orders;

-- delete the "lab1" database
drop database lab1;

select * from clients;