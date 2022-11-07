select count(*) from customer;
select * from customer c, orders o where c.idCustomer = idOrderCustomer;

select Fname,Lname, idOrder, orderStatus from customer c, orders o where c.idCustomer = idOrderCustomer;
select concat(Fname,' ',Lname) as Customer, idOrder as Request, orderStatus as Status from customer c, orders o where c.idCustomer = idOrderCustomer;

insert into orders (idOrderCustomer, orderStatus, orderDescription, shipCost, slipPayment) values 
							 (2, default,'app purchase',null,1);
                             
select count(*) from customer c, orders o where c.idCustomer = idOrderCustomer;

select * from customer left outer join orders ON idCustomer = idOrderCustomer;

-- shows order with associated product
select * from customer c 
				inner join orders o ON c.idCustomer = o.idOrderCustomer
                inner join productOrder p on p.idPOorder = o.idOrder
		group by idCustomer;

-- shows how many orders were placed by customers
select c.idcustomer, Fname, count(*) as Number_of_orders from customer c 
				inner join orders o ON c.idcustomer = o.idOrdercustomer
		group by idCustomer;