-- Number of customers
select count(*) from customer;

-- show all customer data regarding their purchases
select * from customer c, orders o where c.idCustomer = idOrderCustomer;

-- show status of orders by client
select Cname as Customer, idOrder as Request, orderStatus as Status
		from customer c, orders o where c.idCustomer = idOrderCustomer;

-- show how many orders there are
select count(*) from customer c, orders o where c.idCustomer = idOrderCustomer;

-- show purchases and information of each customer
select * from customer left outer join orders ON idCustomer = idOrderCustomer;

-- shows order with associated product
select * from customer c 
				inner join orders o on c.idCustomer = o.idOrderCustomer
                inner join productOrder p on p.idPOorder = o.idOrder
		group by idCustomer;

-- shows how many orders were placed by customers
select c.idcustomer, Cname, count(*) as Number_of_orders from customer c 
				inner join orders o on c.idcustomer = o.idOrdercustomer
		group by idCustomer;

-- show sellers that are also suppliers
select se.CompanyName from Seller se, supplier su where se.CNPJ = su.CNPJ;

-- show the list of products suppliers and stocks
select * from product p
				inner join productSupplier ps on p.idProduct = ps.idPsProduct
		group by idProduct;

-- show supplier names and product names
select CompanyName as Supplier, Pname as Product
		from supplier s, product p where p.idProduct = s.idSupplier;