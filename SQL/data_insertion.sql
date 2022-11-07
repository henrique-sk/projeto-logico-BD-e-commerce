use ecommerce;

show tables;
insert into Customer (Fname, Minit, Lname, CPF, Address) 
	   values('Maria','M','Silva', 12346789, 'rua silva de prata 29, Carangola - Cidade das flores'),
		     ('Matheus','O','Pimentel', 987654321,'rua alemeda 289, Centro - Cidade das flores'),
			 ('Ricardo','F','Silva', 45678913,'avenida alemeda vinha 1009, Centro - Cidade das flores'),
			 ('Julia','S','França', 789123456,'rua lareijras 861, Centro - Cidade das flores'),
			 ('Roberta','G','Assis', 98745631,'avenidade koller 19, Centro - Cidade das flores'),
			 ('Isabela','M','Cruz', 654789123,'rua alemeda das flores 28, Centro - Cidade das flores');
             
insert into product (Pname, category, ratings, Pdescription) values
							  ('Headphone','accessories','4',null),
                              ('GTA5','games','3',null),
                              ('Samsung Note','communication','5',null),
                              ('Microphone - Youtuber','accessories','4',null),
                              ('Notebook Asus','computing','3',null),
                              ('Mouse','accessories','2',null),
                              ('Fire Stick Amazon','accessories','3',null);

insert into orders (idOrderCustomer, orderStatus, orderDescription, shipCost, slipPayment) values 
							 (1, default,'app purchase',null,1),
                             (2,default,'app purchase',50,0),
                             (3,'Confirmed',null,null,1),
                             (4,default,'site purchase',150,0);
 
insert into productOrder (idPOproduct, idPOorder, poQuantity, poStatus) values
						 (1,1,2,null),
                         (2,1,1,null),
                         (3,2,1,null);
                         
insert into stock (location,quantity) values 
							('Rio de Janeiro',1000),
                            ('Rio de Janeiro',500),
                            ('São Paulo',10),
                            ('São Paulo',100),
                            ('São Paulo',10),
                            ('Brasília',60);
                            
insert into stockLocation (idLproduct, idLstock, Location) values
						 (1,2,'RJ'),
                         (2,6,'GO');
                         
insert into supplier (CompanyName, CNPJ, contact) values 
							('Almeida e filhos', 123456789123456,'21985474'),
                            ('Eletrônicos Silva',854519649143457,'21985484'),
                            ('Eletrônicos Valma', 934567893934695,'21975474');
                            
insert into productSupplier (idPsSupplier, idPsProduct, quantity) values
						 (1,1,500),
                         (1,2,400),
                         (2,4,633),
                         (3,3,5),
                         (2,5,10);
                         
insert into seller (CompanyName, TradeMark, CNPJ, CPF, Location, Contact) values 
						('Tech eletronics', null, 123456789456321, null, 'Rio de Janeiro', 219946287),
					    ('Durgas Games',null,null,123456783,'Rio de Janeiro', 219567895),
						('Electronic Kids',null,456789123654485,null,'São Paulo', 1198657484);

insert into productSeller (idPseller, idPproduct, prodQuantity) values 
						 (1,6,80),
                         (2,7,10);