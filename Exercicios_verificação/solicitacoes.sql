                                             --Introdução-- 
-- Considere uma base de dados relacional (SQL Server, MySQL, etc.) de uma loja online com as seguintes tabelas:

-- clientes: id_cliente (PK), nome, email, data_nascimento
-- pedidos: id_pedido (PK), id_cliente (FK), data_pedido, valor_total
-- itens_pedido: id_item (PK), id_pedido (FK), id_produto, quantidade, valor_unitario
-- produtos: id_produto (PK), nome_produto, descricao, preco
 

--  Questão 1: Escreva uma consulta SQL que retorne o nome dos clientes que realizaram pedidos com valor total superior a R$ 1000,00 e a data de nascimento desses clientes.
--                     Ordene o resultado por data de nascimento em ordem decrescente.


select c.nome, c.data_nascimento, p.valor_total 
from clientes c
join pedidos p 
where p.valor_total> 1000 order  by  c.data_nascimento ;

-- Questão 2: Escreva uma consulta SQL que calcule o valor total vendido de cada produto, ordenando os resultados do produto mais vendido para o menos vendido.
SELECT p.nome_produto, sum(i.quantidade * i.valor_unitario) as valor_total
from produtos p
join  itens_pedido i on p.id_produto = i.id_produto
GROUP BY p.id_produto, p.nome_produto
 order by valor_total;


-- Questão 3: Imagine que você precisa adicionar um campo à tabela pedidos para indicar se o pedido foi enviado ou não. Escreva uma query SQL para adicionar um novo campo booleano chamado enviado à tabela pedidos, com valor padrão FALSE.
alter table pedidos add enviado boolean not null default false;