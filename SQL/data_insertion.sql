use ecommerce;
show tables;

insert into Customer(cName, address, contact)
		values('Maria M Silva', 'rua silva de prata 29, Carangola - Cidade das flores', null),
			  ('Matheus O. Pimentel', 'rua alemeda 289, Centro - Cidade das flores', null),
			  ('Ricardo F. Silva', 'avenida alemeda vinha 1009, Centro - Cidade das flores', null),
			  ('Julia S. França','rua lareijras 861, Centro - Cidade das flores', null),
			  ('Roberta G. Assis','avenidade koller 19, Centro - Cidade das flores', null),
			  ('Isabela M. Cruz','rua alemeda das flores 28, Centro - Cidade das flores', null),
              ('Lorenzo e Cia.','rua carambolas 861, Centro - Cidade das flores', null),
			  ('Raimundo Flores Entertainment','avenida tramperido 19, Centro - Cidade das flores', null),
			  ('Silva empreendimntos','rua alpargatas 28, Centro - Cidade das flores', null);
             
insert into CustomerPF (idCustomerPF, CPF) 
	   values(1, 123467890),
		     (2, 987654321),
			 (3, 456789133),
			 (4, 789123456),
			 (5, 987456313),
			 (6, 654789123);

insert into CustomerPJ (idCustomerPJ, TradeMark, CNPJ) 
	   values(7, 'Mega Games', 123467890467890),
		     (8, 'InfoWorld', 987654321467890),
			 (9, 'Eletrônicos Silva',854519649143457);
             
insert into product (Pname, category, ratings, Pdescription) values
							  ('Headphone','accessories','4',null),
                              ('GTA5','games','3',null),
                              ('Samsung Note','communication','5',null),
                              ('Microphone - Youtuber','accessories','4',null),
                              ('Notebook Asus','computing','3',null),
                              ('Mouse','accessories','2',null),
                              ('Fire Stick Amazon','accessories','3',null);
                              
insert into payments(idPayment, idCustomerP, PaymentMethod) values
						(1,1, 'debit'),
                        (2,1, 'credit'),
                        (3,2, 'slip'),
                        (4,3, 'debit'),
                        (5,4, 'credit'),
                        (6,5, 'credit'),
                        (7,6, 'slip'),
                        (8,7, 'debit'),
                        (9,8, 'credit'),
                        (10,9, 'credit'),
                        (11,3, 'slip'),
                        (12,7, 'credit');

insert into delivery(DeliverStatus, TrackCode) values
						('preparing', 'ijhf784h598s7869s8dc'),
                        ('on the way', 'kjh459fu3f7s659'),
                        ('delivered', 'iuh34t983hs75d4c67sct'),
                        ('preparing', 'ijhjhdccs8dc598'),
                        ('on the way', 'kjh459fu3s08fv7f9'),
                        ('delivered', 'iuh34t98376s7d96ht'),
                        ('preparing', 'ijhf784h556897vds98'),
                        (default, 'kjh459fu3s9770898cf9'),
                        ('delivered', 'iuh34t983hd67s98t'),
                        (default, 'iuh34t98376s7dht'),
                        ('preparing', 'ijhf784h5597vds98'),
                        ('on the way', 'kjh459fs9770898cf9'),
                        ('delivered', 'iuh34t3hd6c57s98t');

insert into orders (idOrderCustomer, idOrderDelivery, orderStatus, orderDescription, shipCost, slipPayment) values 
							 (1,3, default,'app purchase',null,1),
                             (2,5,default,'app purchase',50,0),
                             (3,4,'Confirmed',null,null,1),
                             (4,1,default,'site purchase',150,0),
                             (5,2, default,'app purchase',null,1),
                             (6,9,default,'app purchase',50,0),
                             (7,7,'Confirmed',null,null,1),
                             (8,8,default,'site purchase',150,0),
                             (9,5,default,'site purchase',150,0);
 
insert into productOrder (idPOproduct, idPOorder, poQuantity, poStatus) values
						 (1,1,2,null),
                         (2,1,1,null),
                         (3,2,1,null),
                         (4,3,2,null),
                         (5,4,3,null),
                         (6,5,1,null);
                         
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
					    ('Eletrônicos Silva',null,854519649143457,123456783,'Rio de Janeiro', 219567895),
						('Electronic Kids',null,456789123654485,null,'São Paulo', 1198657484);

insert into productSeller (idPseller, idPproduct, prodQuantity) values 
						 (1,6,80),
                         (2,7,10);