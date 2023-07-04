-- Aqui você deve colocar os códigos SQL referentes às
-- Seleções de dados

-- 1)
SELECT *
FROM pedidos
-- 2)
SELECT
    pedido_id
FROM 
    produtos_pedidos 
JOIN
    produtos ON produtos.id = produtos_pedidos.produto_id
WHERE 
  produtos.nome = 'Fritas';

-- 3)
SELECT clientes.nome AS gostam_de_fritas
FROM clientes 
JOIN pedidos  ON
pedidos.cliente_id = clientes.id
JOIN produtos_pedidos ON
pedidos.id = produtos_pedidos.pedido_id
JOIN produtos ON
produto_id = produtos.id
WHERE produtos.nome = 'Fritas';
-- 4)
SELECT 
       Sum(produtos.preço) AS sum
FROM   produtos 
join produtos_pedidos on produtos_pedidos.produto_id = produtos.id 
join pedidos on pedidos.id = produtos_pedidos.pedido_id
join clientes on clientes.id = pedidos.cliente_id 
where clientes.nome = 'Laura'

-- 5)
SELECT 
produtos.nome, count(produto_id) AS count
FROM 
produtos_pedidos
JOIN produtos ON produtos.id = produtos_pedidos.produto_id
GROUP BY produtos.nome
