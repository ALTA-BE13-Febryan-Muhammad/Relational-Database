-- A. insert 5 operators
insert into operators(operator_name)
values ("operator1");

insert into operators(operator_name)
values ("operator2");

insert into operators(operator_name)
values ("operator3");

insert into operators(operator_name)
values ("operator4");

insert into operators(operator_name)
values ("operator5");

-- coba update value operator
update operators set
operator_name="operator ganti coba"
where id = 5;

-- B. Insert 3 product_type

insert into product_type(categories)
values ("elektronik");

insert into product_type(categories)
values ("perabotan");

insert into product_type(categories)
values ("rumah tangga");

-- C. Insert x Product dengan product type id = x, dan operators id = x

insert into products(name, price, product_type_id, operator_id)
values ("LG V60", 12000000, 1, 3);

insert into products(name, price, product_type_id, operator_id)
values ("LG G7", 6000000, 1, 3);

insert into products(name, price, product_type_id, operator_id)
values ("Cukur Rambut Elektrik", 2000000, 1, 3);

-- D.

insert into products(name, price, product_type_id, operator_id)
values ("Kursi Gaming Liquid", 7000000, 2, 1);

insert into products(name, price, product_type_id, operator_id)
values ("Meja RGB", 5555555, 2, 1);

insert into products(name, price, product_type_id, operator_id)
values ("Lemari 5 Pintu", 66999666, 2, 1);

-- E.

insert into products(name, price, product_type_id, operator_id)
values ("Blender Milenium 2000", 1000, 3, 4);

insert into products(name, price, product_type_id, operator_id)
values ("Pisau Otomatis", 200000, 3, 4);

insert into products(name, price, product_type_id, operator_id)
values ("Garpu Yunani Kuno", 60000, 3, 4);

-- F. insert product description pada setiap product

insert into product_descriptions(description)
values ("Hp paling canggih, Iphone pun kalah");

insert into product_descriptions(description)
values ("Kursi nyaman, ada AC nya lhooo");

insert into product_descriptions(description)
values ("Blender masa kini, bisa mengaduk-aduk hatimu");

insert into product_descriptions(description)
values ("HP Pertamaku, Layarnya bisa sampai 2k");

insert into product_descriptions(description)
values ("Bisa mencukur bagian yang tidak kelihatan, tahu sendiri lah ya");

insert into product_descriptions(description)
values ("Meja warna-warni kayak LGBT");

insert into product_descriptions(description)
values ("Pintunya banyak cuy, sampe lupa pintu yang mana yang isinya baju");

insert into product_descriptions(description)
values ("Pisau yang bisa gerak sendir, apalagi di tengah malam");

insert into product_descriptions(description)
values ("Garpu yang merupakan artefak kuno, barang simpanan pribadi");

-- G. Insert 3 payment methods

insert into payment_methods(name)
values ("Bayar Lunas");

insert into payment_methods(name)
values ("Bayar Setelah Panen");

insert into payment_methods(name)
values ("Hutang");

-- H. insert 5 user pada tabel user

insert into users(name, gender, status)
values ("Febryan", "M", "active");

insert into users(name, gender, status)
values ("Agus", "M", "active");

insert into users(name, gender, status)
values ("Budi", "M", "active");

insert into users(name, gender, status)
values ("Cindy", "F", "active");

insert into users(name, gender, status)
values ("Clara", "F", "active");

-- I. insert transaksi di masing2 user

insert into transactions(user_id, total_qty, total_transaction, payment_method_id)
values (1, 3, 3, 3);

insert into transactions(user_id, total_qty, total_transaction, payment_method_id)
values (2, 3, 3, 2);

insert into transactions(user_id, total_qty, total_transaction, payment_method_id)
values (3, 3, 3, 1);

-- J. insert 3 product masing-masing transaksi 

insert into transaction_details(transaction_id, product_id, qty)
value (1, 1, 3);

insert into transaction_details(transaction_id, product_id, qty)
value (3, 2, 3);

insert into transaction_details(transaction_id, product_id, qty)
value (4, 3, 3);

-- 2. Select
-- a.
select name, 
gender from 
users where gender = "M";

-- b. 
select id, name 
from products 
where id = 3;

-- c. 
select * 
from users 
where name = "%a%"
like created_at <= current_date() and created_at >= 2022-11-03;

select * 
from users 
where created_at <= current_date() and created_at >= 2022-11-03
like name = "%a%";

-- coba C

select *
from users
where created_at in (select created_at from users where created_at <= now() and created_at >= 2022-11-03)
and name in (select name from users where name like "%a%");

-- d. ?????
select sum(gender)
from users
where gender = "F"
; 

-- e.
select * from users order by name asc;

-- f.
select *
from products
where 




