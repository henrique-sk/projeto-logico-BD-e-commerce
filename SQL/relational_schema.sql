create database if not exists ecommerce;
use ecommerce;

create table customer(
	idCustomer int auto_increment primary key,
    Cname varchar(100),
    Address varchar(255),
    Contact char(11)
);

alter table customer auto_increment=1;

create table customerPF(
	idCustomerPF int,
    CPF char(9) unique not null,
	constraint fk_customer_pf foreign key (idCustomerPF) references customer(idCustomer)
		on update cascade
);

create table customerPJ(
	idCustomerPJ int,
    TradeMark varchar(45),
    CNPJ char(15) unique not null,
	constraint fk_customer_pj foreign key (idCustomerPJ) references customer(idCustomer)
		on update cascade
);

create table product(
	idProduct int auto_increment primary key,
    Pname varchar(45) not null,
    category enum('games', 'communication', 'consoles', 'computing', 'accessories') not null,
    ratings float default 0,
    Pdescription varchar(255)
);

create table payments(
	idPayment int,
    idCustomerP int,
    PaymentMethod enum ('credit', 'debit', 'slip') not null,
    constraint fk_payment foreign key (idCustomerP) references customer(idCustomer)
		on update cascade,
    primary key(idCustomerP, idPayment)    
);

create table delivery(
	idDelivery int auto_increment primary key,
    DeliverStatus ENUM('preparing', 'on the way', 'delivered') default 'preparing',
    TrackCode varchar(45) unique
);

create table orders(
	idOrder int auto_increment primary key,
    idOrderCustomer int,
    idOrderDelivery int,
    orderStatus enum('Cancelled', 'Confirmed', 'In Progress') default 'In Progress',
    orderDescription varchar(255),
    shipCost float default 10,
    slipPayment boolean default false,
    -- idPayment
    constraint fk_orders_customer foreign key (idOrderCustomer) references customer(idCustomer)
		on update cascade,
	constraint fk_orders_delivery foreign key (idOrderDelivery) references delivery(idDelivery)
		on update cascade
);

create table stock(
	idStock int auto_increment primary key,
    location varchar(255),
    quantity int default 0        
);

create table supplier(
	idSupplier int auto_increment primary key,
    CompanyName varchar(45) not null,
    CNPJ char(15) not null,
    contact char(11) not null,
    constraint unique_supplier unique (CNPJ)
);

create table seller(
	idSeller int auto_increment primary key,
    CompanyName varchar(45) not null,
    TradeMark varchar(45),
    CNPJ char(15),
    CPF char(9),
    Location varchar(255) not null,
    Contact char(11) not null,
    constraint unique_cnpj_seller unique(CNPJ),
    constraint unique_cpf_seller unique(CPF)
);

create table productSeller(
	idPseller int,
    idPproduct int,
    prodQuantity int default 1,
    primary key (idPseller, idPproduct),
    constraint fk_product_seller foreign key (idPseller) references seller(idSeller),
    constraint fk_product_product foreign key (idPproduct) references product(idProduct)
);

create table productOrder(
	idPOproduct int,
    idPOorder int,
    poQuantity int default 1,
    poStatus enum('available', 'out of stock') default 'available',
    primary key (idPOproduct, idPOorder),
    constraint fk_productorder_seller foreign key (idPOproduct) references product(idProduct),
    constraint fk_productorder_product foreign key (idPOorder) references orders(idOrder)
);

create table stockLocation(
	idLproduct int,
    idLstock int,
    Location varchar(255) not null,
    primary key (idLproduct, idLstock),
    constraint fk_stock_location_product foreign key (idLproduct) references product(idProduct),
    constraint fk_stock_location_stock foreign key (idLstock) references stock(IdStock)
);

create table productSupplier(
	idPsSupplier int,
    idPsProduct int,
    quantity int not null,
    primary key (idPsSupplier, idPsProduct),
    constraint fk_product_supplier_supplier foreign key (idPsSupplier) references supplier(idSupplier),
    constraint fk_product_supplier_prodcut foreign key (idPsProduct) references product(idProduct)
);
show tables;
show databases;
use information_schema;
show tables;
desc referential_constraints;
select * from referential_constraints where constraint_schema = 'ecommerce';