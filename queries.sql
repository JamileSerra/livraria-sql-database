-- Consultas SQL para análise da base de dados da livraria
use livraria;

-- Quais são todos os clientes cadastrados?
select * from clients;

-- Quais são os títulos e preços dos livros?
select bookTitle, price from books;

-- Quais livros possuem preço acima de 50?
select * 
from books
where price > 50;

-- Quais pedidos estão confirmados?
select * 
from orders
where orderStatus = 'Confirmado';

-- Qual seria o novo preço dos livros com aumento de 10%?
select 
    bookTitle,
    price,
    price * 1.10 as priceIncrease
from books;

-- Quais são os livros ordenados do mais caro para o mais barato?
select bookTitle, price
from books
order by price desc;

-- Quais pedidos possuem valor total acima de 60?
select 
    idOrder,
    sum(quantity * unitPrice) as totalOrder
from orderItems
group by idOrder
having sum(quantity * unitPrice) > 60;

-- Quais clientes já realizaram pedidos na livraria?
select 
    concat(c.Fname, ' ', c.Lname) as clientName,
    o.idOrder,
    o.orderStatus
from clients c
inner join orders o 
on c.idClient = o.idClient;

-- A qual categoria cada livro pertence?
select 
    b.bookTitle,
    c.categoryName
from books b
inner join categories c
on b.idCategory = c.idCategory;

-- Quais são os detalhes dos pedidos (cliente, livro, quantidade e valor total)?
select
    o.idOrder,
    concat(c.Fname, ' ', c.Lname) as clientName,
    b.bookTitle,
    oi.quantity,
    oi.unitPrice,
    (oi.quantity * oi.unitPrice) as total
from orders o
inner join clients c on o.idClient = c.idClient
inner join orderItems oi on o.idOrder = oi.idOrder
inner join books b on oi.idBook = b.idBook;

-- Qual o valor total de cada pedido?
select
    idOrder,
    sum(quantity * unitPrice) as totalOrder
from orderItems
group by idOrder
order by totalOrder desc;