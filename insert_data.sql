-- Persistindo dados na minha base

use livraria;

-- CLIENTS
insert into clients (Fname, Lname, CPF, phone, email, address) values
('Maria', 'Silva', '12345678901', '71999990001', 'maria@email.com', 'Salvador - BA'),
('João', 'Souza', '98765432101', '21999990002', 'joao@email.com', 'Rio de Janeiro - RJ'),
('Ana', 'Oliveira', '45678912301', '11999990003', 'ana@email.com', 'São Paulo - SP'),
('Carlos', 'Santos', '32165498701', '31999990004', 'carlos@email.com', 'Belo Horizonte - MG'),
('Fernanda', 'Costa', '78912345601', '41999990005', 'fernanda@email.com', 'Curitiba - PR'),
('Lucas', 'Pereira', '65498732101', '85999990006', 'lucas@email.com', 'Fortaleza - CE');

-- PUBLISHERS
insert into publishers (publisherName, CNPJ, contact) values
('Editora Alpha', '12345678000199', '7133330001'),
('Editora Beta', '98765432000188', '2133330002'),
('Editora Gamma', '45678912000177', '1133330003'),
('Editora Delta', '78945612000166', '3133330004'),
('Editora Sigma', '32178945000155', '4133330005');

-- CATEGORIES
insert into categories (categoryName) values
('Romance'),
('Ficção Distópica'),
('Suspense'),
('Fantasia'),
('Literatura Clássica');

-- AUTHORS
insert into authors (authorName, nationality) values
('Machado de Assis', 'Brasileiro'),
('Clarice Lispector', 'Brasileira'),
('George Orwell', 'Britânico'),
('J.K. Rowling', 'Britânica'),
('Stephen King', 'Americano'),
('Agatha Christie', 'Britânica'),
('Patrick Rothfuss', 'Americano'),
('Dan Brown', 'Americano'),
('J.R.R. Tolkien', 'Britânico'),
('Emily Brontë', 'Britânica');

-- BOOKS
insert into books (bookTitle, idPublisher, idCategory, publicationYear, price, isbn) values
('Dom Casmurro', 1, 5, 1899, 39.90, '9788535914849'),
('Memórias Póstumas de Brás Cubas', 1, 5, 1881, 42.50, '9788535932492'),
('1984', 2, 2, 1949, 49.90, '9780451524935'),
('Harry Potter e a Pedra Filosofal', 3, 4, 1997, 59.90, '9788532511010'),
('O Iluminado', 4, 3, 1977, 54.90, '9780307743657'),
('Assassinato no Expresso do Oriente', 5, 3, 1934, 44.90, '9788595086784'),
('O Nome do Vento', 3, 4, 2007, 69.90, '9788579623635'),
('O Código Da Vinci', 2, 3, 2003, 52.90, '9788575421136'),
('O Senhor dos Anéis: A Sociedade do Anel', 4, 4, 1954, 79.90, '9788533613379'),
('O Morro dos Ventos Uivantes', 5, 1, 1847, 37.90, '9788537814109');

-- PAYMENTS
insert into payments (idClient, typePayment, limitAvailable) values
(1, 'Credit Card', 1500.00),
(1, 'PIX', null),
(2, 'Debit Card', null),
(3, 'Credit Card', 2000.00),
(4, 'Bank Slip', null),
(5, 'PIX', null),
(6, 'Credit Card', 1200.00);

-- ORDERS
insert into orders (idClient, idPayment, orderStatus, deliveryStatus, trackingCode) values
(1, 1, 'Confirmado', 'Enviado', 'BR123456789'),
(2, 3, 'Pendente', 'Pendente', null),
(3, 4, 'Confirmado', 'Entregue', 'BR987654321'),
(4, 5, 'Cancelado', 'Pendente', null),
(5, 6, 'Confirmado', 'Enviado', 'BR555666777'),
(6, 7, 'Pendente', 'Pendente', null);

-- ORDERITEMS
insert into orderItems (idOrder, idBook, quantity, unitPrice) values
(1, 1, 1, 39.90),
(1, 3, 1, 49.90),
(2, 4, 2, 59.90),
(3, 7, 1, 69.90),
(3, 9, 1, 79.90),
(4, 6, 1, 44.90),
(5, 10, 1, 37.90),
(5, 2, 1, 42.50),
(6, 8, 1, 52.90);

-- STOCK
insert into stock (idBook, quantity, storageLocation) values
(1, 15, 'Salvador - BA'),
(2, 10, 'Salvador - BA'),
(3, 12, 'Rio de Janeiro - RJ'),
(4, 20, 'São Paulo - SP'),
(5, 8, 'Belo Horizonte - MG'),
(6, 14, 'Curitiba - PR'),
(7, 9, 'Fortaleza - CE'),
(8, 11, 'São Paulo - SP'),
(9, 7, 'Rio de Janeiro - RJ'),
(10, 13, 'Salvador - BA');

-- BOOKAUTHOR
insert into bookAuthor (idBook, idAuthor) values
(1, 1),
(2, 1),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);




