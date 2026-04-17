# 📚 Banco de Dados para Livraria

## 📌 Descrição do Projeto
Este projeto consiste na modelagem e implementação de um banco de dados para uma livraria, desenvolvido de forma independente como prática dos conceitos de SQL.

Foram criadas tabelas com relacionamentos, definidas chaves primárias e estrangeiras, inseridos dados para testes e desenvolvidas consultas SQL para análise das informações.

## 🎯 Objetivo do Projeto
Praticar conceitos de banco de dados, incluindo:
- criação de tabelas e relacionamentos;
- inserção de dados;
- aplicação de consultas SQL;
- análise de dados utilizando diferentes cláusulas.

## 🧱 Estrutura do Banco de Dados
Banco criado:

livraria

Principais tabelas:
- clients
- payments
- orders
- books
- authors
- categories
- publishers
- orderItems
- stock
- bookAuthor

## ⚙️ Modelagem
O banco contempla:
- Relacionamentos 1:N (clientes → pedidos);
- Relacionamentos N:N (livros ↔ autores);
- Uso de chaves primárias e estrangeiras;
- Integridade referencial entre as tabelas.

## 💾 Estrutura do Projeto

```
livraria-sql-database/
├── schema.sql
├── insert_data.sql
├── queries.sql
└── README.md
```

## 🔍 Consultas Desenvolvidas
Foram criadas consultas para responder perguntas como:
- Quais são os clientes cadastrados?
- Quais livros possuem maior valor?
- Quais pedidos estão confirmados?
- Qual o valor total de cada pedido?
- Relação entre clientes, pedidos e livros;
- A qual categoria cada livro pertence;

## 📊 Exemplos de Queries

### Valor total por pedido
```sql
select
    idOrder,
    sum(quantity * unitPrice) as totalOrder
from orderItems
group by idOrder
order by totalOrder desc;
```

### Detalhes dos pedidos
```sql
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
```

## 🧠 Aprendizados
Durante o desenvolvimento deste projeto, foram praticados:
- Criação de banco de dados relacional;
- Definição de chaves primárias e estrangeiras;
- Inserção de dados para testes;
- Criação de consultas com SELECT, WHERE, ORDER BY, GROUP BY, HAVING e JOIN;
- Análise básica de dados utilizando SQL.

## 🚀 Tecnologias Utilizadas
- MySQL
- SQL

---

💡 Projeto desenvolvido para fins de estudo.

👩‍💻 Autoria: Jamile Alves Serra
