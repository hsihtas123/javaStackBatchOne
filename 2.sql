 --  Customer place Order in amazon,swiggy
 
 -- Customer table  id,name,phone,gmail,location
 
 -- Order orderId,itemName,orderDate,totalAmount,customerId (Which user is Ordered) (customerId as foriegn Key)
 
 -- Single Customer can make n number of orders  -> one to many mapping
 
 create table customer (
     cusId int primary key ,
     cusName varchar(255) not null,
     cusMobile bigint(10) not null,
     cusEmail varchar(255) not null,
     cusLocation varchar(255) not null
     );
     
   create table orders(
        orderId int primary key,
        orderDate date not null,
        totalAmount int not null,
        customer_id int not null,
        foreign key (customer_id) references customer(cusId)
        );
        
        
select * from customer
join orders;

select * from customer
join orders
on customer.cusId = orders.customer_id;

select * from customer
left join orders
on customer.cusId = orders.customer_id;

select * from customer
right join orders
on customer.cusId = orders.customer_id;


select customer.cusName,customer.cusMobile,orders.totalAmount from customer
join orders
on customer.cusId = orders.customer_id
where customer.cusId = 101;


        
        
select * from orders;      
select * from customer;
 -- dipslay customer name who placed the order
 select customer.cusName as Customer_Name,
		orders.orderId as Order_ID        
from customer,orders
where customer.cusId = orders.customer_id ; -- pk =fk

select  distinct customer.cusName as Customer_Name,count(*) as Number_Of_Orders	    
from customer,orders
where customer.cusId = orders.customer_id 
group by orders.customer_id;

select  distinct customer.cusName as Customer_Name,sum(orders.totalAmount), count(*) as Number_Of_Orders	    
from customer,orders
where customer.cusId = orders.customer_id 
group by orders.customer_id;
 
     
 