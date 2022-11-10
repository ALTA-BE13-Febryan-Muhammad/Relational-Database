-- 1. union
select *
from transactions
where user_id = 1
union
select *
from transactions
where user_id = 2
;

-- 2. tabel gk sesuai sih


-- 3. 
select transaction_details.id as id, 
transaction_details.transaction_id as transactions,
transaction_details.product_id as product,
transaction_details.price as harga,
transaction_details.qty as jumlah,
products.name as nama_produk,
product_type.id as id_product_type,
product_type.categories as kategori_produk
from transaction_details
inner join products on transaction_details.product_id = products.id
inner join product_type on products.product_type_id = product_type.id
where product_type.id = 2
;

-- 4.
select *
from products
full join product_type 
;

-- 5.
select *
from transactions
left join users 
on users.id = transactions.user_id
right join transaction_details on transaction_details.id = transactions.id
inner join products on products.id = transaction_details.product_id
;

-- 8. cobacoba pake (where not exist) pusing sendiri wkwk
select *
from products
where id not in (select distinct product_id from transaction_details) 
;