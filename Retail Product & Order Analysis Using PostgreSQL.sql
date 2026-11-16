-- Table Product
Create table product(
product_id serial primary key,
product_name varchar(50) not null,
category text not null,
price numeric(10,2) default 0 check(price>=0),
stock_quantity int default 0 check(stock_quantity>=0),
is_available boolean,
added_on Date default current_date
);

select * from product;

-- Table Order
Create table orders(
order_id serial primary key,
product_id int,
quantity int,
order_date Date default current_date,
customer_name varchar(50) not null,
payment_method text,
Foreign key (product_id)
References product(product_id)
);

select * from orders;

-- Show each order along with the product name and price,
select o.order_id,p.product_name,p.price
from orders o join product p
on o.product_id=p.product_id;

-- Show all product even if were never ordered.
select p.product_name, o.order_id
from product p left join orders o
on p.product_id=o.product_id;

-- Show Orders for only "Electronics".
select o.order_id, p.product_name, p.category
from orders o join product p
on o.product_id = p.product_id
where category='Electronics';

-- List all orders Sorted by Product (High TO Low).
select o.order_id, p.product_name, p.category
from orders o join product p
on o.product_id = p.product_id
order by price DESC;

-- Show Total revenue earned per product.
select p.product_name,sum(o.quantity*p.price) as Revenue
from product p join orders o
on p.product_id=o.product_id
group by product_name;

-- Show number of orders placed to each product.
select p.product_name,count(o.order_id) as Total_Order 
from product p left join orders o
on p.product_id = o.product_id
group by p.product_name;

-- Show product where total order revenue >2000.
select p.product_name,sum(o.quantity*p.price) as Revenue
from product p join orders o
on p.product_id=o.product_id
group by product_name
Having sum(o.quantity * p.price) >2000;

-- Show unique customers who ordered 'Electronics' product.
select Distinct o.customer_name
from orders o join product p
on o.product_id=p.product_id
where p.category='Electronics';






