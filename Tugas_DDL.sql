-- buat db
create database TUGAS_DDL;

-- gunakan db
use TUGAS_DDL;

-- membuat table
create table users (
id int not null primary key auto_increment,
name varchar(50) not null,
gender enum("M", "F"),
status enum("active", "inactive"),
created_at datetime default current_timestamp,
updated_at datetime default current_timestamp
);

create table operators(
id int not null primary key auto_increment,
operator_name varchar(50) not null,
created_at datetime default current_timestamp,
updated_at datetime default current_timestamp
);

create table product_type(
id int not null primary key auto_increment,
categories varchar(50) not null,
created_at datetime default current_timestamp,
updated_at datetime default current_timestamp
);

create table payment_methods(
id int not null primary key auto_increment,
name varchar(50) not null,
created_at datetime default current_timestamp,
updated_at datetime default current_timestamp
);

create table address(
id int not null primary key auto_increment,
user_id int,
address varchar(255),
constraint fk_AddressUsers FOREIGN KEY (user_id) REFERENCES users(id)
);

create table user_payment_method_detail(
id int not null primary key auto_increment,
user_id int,
payment_method_id int,
detail varchar(255),
constraint fk_User_Payment_Method_DetailUsers foreign key (user_id) references users(id),
constraint fk_User_Payment_Method_DetailPayment_Methods foreign key (payment_method_id) references payment_methods(id)
);

create table products(
id int not null primary key auto_increment,
name varchar(50) not null,
price decimal not null,
product_type_id int,
operator_id int,
created_at datetime default current_timestamp,
updated_at datetime default current_timestamp,
constraint fk_ProductsProduct_Type foreign key (product_type_id) references product_type(id),
constraint fk_ProductsOperators foreign key (operator_id) references operators(id)
);

create table transactions(
id int not null primary key auto_increment,
user_id int,
total_qty int,
total_transaction decimal,
transaction_date datetime default current_timestamp,
payment_method_id int,
created_at datetime default current_timestamp,
updated_at datetime default current_timestamp,
constraint fk_TransactionsUsers foreign key (user_id) references users(id),
constraint fk_TransactionsPayment_Methods foreign key (payment_method_id) references payment_methods(id)
);

create table transaction_details(
id int not null primary key auto_increment,
transaction_id int,
product_id int,
price decimal,
qty int,
created_at datetime default current_timestamp,
updated_at datetime default current_timestamp,
constraint fk_Transaction_DetailsTransactions foreign key (transaction_id) references transactions(id),
constraint fk_Transaction_DetailsProducts foreign key (product_id) references products(id)
);

