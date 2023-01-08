# projeto-logico-BD-e-commerce
 
Descrição.
Este projeto é um desafio proposto no curso Bancos de Dados SQL e NoSQL do Bootcamp Geração Tech Unimed-BH - Ciência de Dados da plataforma DIO (Digital Innovation One).

*Todo o material desenvolvido durante as aulas pode ser encontrado [aqui](https://github.com/henrique-sk/Ciencia_de_Dados-DIO-Geracao_Tech_Unimed_BH).*

## Objetivo proposto:

### Aplicar o mapeamento para o  cenário:
* “Refine o modelo apresentado acrescentando os seguintes pontos”:
    * Cliente PJ e PF – Uma conta pode ser PJ ou PF, mas não pode ter as duas informações;
    * Pagamento – Pode ter cadastrado mais de uma forma de pagamento;
    * Entrega – Possui status e código de rastreio;
* Algumas das perguntas que podes fazer para embasar as queries SQL:
    * Quantos pedidos foram feitos por cada cliente?
    * Algum vendedor também é fornecedor?
    * Relação de produtos fornecedores e estoques;
    * Relação de nomes dos fornecedores e nomes dos produtos;
    
### Soluções desenvolvidas:
* do refinamento:
    * Cliente PJ e PF possuem cada um sua própria tabela (com chaves estrangeiras), tendo relacionamento com a tabela cliente que possui dados em comum para todos clientes;
    * Tabela pagamento possui 3 formas de pagamento e tem relação de muitos para 1 com a tabela cliente;
    * Tabela entrega feita conforme orientação e com relação de 1 para 1 com a tabela pedido;
* das perguntas:
    * Feitas queries com as solicitações propostas e adicionadas algumas queries extras.


## Autor
Henrique SK

## License
[MIT](https://choosealicense.com/license/mit/)
