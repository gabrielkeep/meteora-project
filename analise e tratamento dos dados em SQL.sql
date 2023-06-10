SHOW TABLES;
USE dw_meteora;

SELECT * FROM vendedores;

UPDATE vendedores
SET nome_vendedor = "Nádia Oliveira"
WHERE vendedor_id = 3;

SELECT * FROM itens_pedido;
SELECT * FROM pedido;
SELECT * FROM produto;
SELECT * FROM vendedores;


/*
Procurando por dados duplicados
*/ 
SELECT COUNT(*) as QTD_ITENS_PEDIDO_TOTAL FROM itens_pedido;
SELECT COUNT(*) as QTD_ITENS_PEDIDO_UNICOS FROM (
SELECT DISTINCT * FROM itens_pedido) a;

SELECT COUNT(*) as QTD_PEDIDO_TOTAL FROM pedido;
SELECT COUNT(*) as QTD_PEDIDO_UNICOS FROM (
SELECT DISTINCT * FROM pedido) b;

SELECT COUNT(*) as QTD_PRODUTO_TOTAL FROM produto;
SELECT COUNT(*) as QTD_PRODUTO_UNICOS FROM (
SELECT DISTINCT * FROM produto) c;

SELECT COUNT(*) as QTD_VENDEDORES_TOTAL FROM vendedores;
SELECT COUNT(*) as QTD_VENDEDORES_UNICOS FROM (
SELECT DISTINCT * FROM vendedores) d;

/*
	Tratando os dados nulos
*/

SELECT * FROM itens_pedido
WHERE pedido_id IS NULL;

DELETE FROM itens_pedido
WHERE pedido_id IS NULL;

SELECT * FROM vendedores;

INSERT INTO vendedores
VALUES (6, "Usuário");

SELECT * FROM pedido;

UPDATE pedido
SET vendedor_id = 6
WHERE vendedor_id IS NULL;