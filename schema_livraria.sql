-- Criando minha base de dados de uma livraria

create database livraria;
use livraria;

-- CLIENTS
create table clients (
    idClient int auto_increment primary key,
    Fname varchar(20) not null,
    Lname varchar(30) not null,
    CPF char(11) not null,
    phone varchar(15),
    email varchar(100),
    address varchar(255),
    constraint unique_cpf_client unique (CPF)
);

-- PAYMENTS
create table payments (
    idPayment int auto_increment primary key,
    idClient int not null,
    typePayment varchar(45) not null,
    limitAvailable decimal(10,2),

    constraint fk_payments_client
        foreign key (idClient) references clients(idClient)
);

-- PUBLISHERS
create table publishers (
    idPublisher int auto_increment primary key,
    publisherName varchar(100) not null,
    CNPJ char(14),
    contact varchar(15)
);

-- CATEGORIES
create table categories (
    idCategory int auto_increment primary key,
    categoryName varchar(50) not null
);

-- AUTHORS
create table authors (
    idAuthor int auto_increment primary key,
    authorName varchar(100) not null,
    nationality varchar(50)
);

-- ORDERS
create table orders (
    idOrder int auto_increment primary key,
    idClient int not null,
    idPayment int,
    orderStatus enum('Pendente', 'Confirmado', 'Cancelado') default 'Pendente',
    deliveryStatus enum('Pendente', 'Enviado', 'Entregue') default 'Pendente',
    trackingCode varchar(20),

    constraint fk_orders_client
        foreign key (idClient) references clients(idClient),

    constraint fk_orders_payment
        foreign key (idPayment) references payments(idPayment)
);

-- BOOKS
create table books (
    idBook int auto_increment primary key,
    bookTitle varchar(100) not null,
    idPublisher int not null,
    idCategory int not null,
    publicationYear int,
    price decimal(10,2) not null,
    isbn varchar(20),

    constraint fk_books_publisher
        foreign key (idPublisher) references publishers(idPublisher),

    constraint fk_books_category
        foreign key (idCategory) references categories(idCategory)
);

-- ORDERITEMS
create table orderItems (
    idOrder int,
    idBook int,
    quantity int default 1,
    unitPrice decimal(10,2) not null,
    primary key (idOrder, idBook),

    constraint fk_orderitems_order
        foreign key (idOrder) references orders(idOrder),

    constraint fk_orderitems_book
        foreign key (idBook) references books(idBook)
);

-- STOCK
create table stock (
    idStock int auto_increment primary key,
    idBook int not null,
    quantity int default 0,
    storageLocation varchar(100),

    constraint fk_stock_book
        foreign key (idBook) references books(idBook)
);

-- BOOKAUTHOR
create table bookAuthor (
    idBook int,
    idAuthor int,
    primary key (idBook, idAuthor),

    constraint fk_bookauthor_book
        foreign key (idBook) references books(idBook),

    constraint fk_bookauthor_author
        foreign key (idAuthor) references authors(idAuthor)
);

