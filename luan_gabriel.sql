-- Criando o Banco
CREATE SCHEMA luan_bd;

-- Criando as tabelas

USE luan_bd;
CREATE TABLE vendas(
	id_venda INT AUTO_INCREMENT PRIMARY KEY,
    produto VARCHAR(100),
    categoria VARCHAR(100),
    quantidade INT,
    preco_unidade DECIMAL (10,2),
    data_venda DATE
);

-- Inserindo os dados
INSERT INTO vendas
VALUES
(1,'Arroz', 'Alimentos', 5, 10.00, '2024-09-01'),
(2,'Feijão', 'Alimentos', 3, 7.50, '2024-09-02'),
(3,'Sabão', 'Limpeza', 2, 12.00, '2024-09-02'),
(4,'Café', 'Alimentos', 6, 8.00, '2024-09-03'),
(5,'Detergente', 'Limpeza', 4, 5.00, '2024-09-03'),
(6,'Leite', 'Alimentos', 10, 4.50, '2024-09-04'),
(7,'Sabonete', 'Higiene', 6, 3.00, '2024-09-04'),
(8,'Pão', 'Alimentos', 15, 1.50, '2024-09-05'),
(9,'Shampoo', 'Higiene', 1, 15.00, '2024-09-05'),
(10,'Creme dental', 'Higiene', 3, 8.00, '2024-09-06')
;

-- Contar o número de vendas

-- Quantas vendas foram realizadas na categoria "Alimentos"?
SELECT COUNT(*) AS vendas_alimentos
FROM vendas
WHERE categoria = 'Alimentos';
 -- Quantas vendas foram realizadas no total?
SELECT COUNT(*) AS total_vendas
FROM vendas;

 -- Qual é o preço médio por unidade dos produtos vendidos?
SELECT AVG(preco_unidade) AS preco_medio
FROM vendas;
 -- Qual é a quantidade média de produtos vendidos por venda?
SELECT AVG(quantidade) AS quantidade_media
FROM vendas;
 
-- Qual foi o menor preço por unidade vendido?
SELECT MIN(preco_unidade) AS menor_preco
FROM vendas;
-- Qual foi o maior preço por unidade vendido?
SELECT MAX(preco_unidade) AS maior_preco
FROM vendas;
-- Qual foi a menor e a maior quantidade de produtos vendidos em uma venda?
SELECT MIN(quantidade) AS menor_quantidade, MAX(quantidade) AS maior_quantidade
FROM vendas;
 
 -- Qual foi o maior valor total de uma venda?
SELECT MAX(quantidade * preco_unidade) AS maior_valor_venda
FROM vendas;
-- Qual é a média de valor das vendas realizadas na categoria "Higiene"?
SELECT AVG(quantidade * preco_unidade) AS media_valor_higiene
FROM vendas
WHERE categoria = 'Higiene';