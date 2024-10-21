CREATE TABLE Produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL,
    perecivel BOOLEAN NOT NULL,
    marca VARCHAR(100),
    nacionalidade VARCHAR(50)
);

INSERT INTO Produtos (nome, preco, estoque, perecivel, marca, nacionalidade)
VALUES 
('Leite Integral', 4.50, 100, TRUE, 'Marca A', 'Brasil'),
('Arroz Branco', 20.00, 50, FALSE, 'Marca B', 'Brasil'),
('Chocolate', 7.90, 200, TRUE, 'Marca C', 'Suiça'),
('Cerveja', 3.99, 150, TRUE, 'Marca D', 'Alemanha'),
('Sabonete', 2.50, 300, FALSE, 'Marca E', 'EUA');

SELECT * FROM Produtos;

SELECT COUNT(*) AS total_produtos FROM Produtos;
SELECT AVG(preco) AS preco_medio FROM Produtos;
SELECT perecivel, AVG(preco) AS preco_medio
FROM Produtos
GROUP BY perecivel;
SELECT nome, AVG(preco) AS preco_medio
FROM Produtos
GROUP BY nome;
SELECT AVG(preco) AS preco_medio, SUM(estoque) AS total_estoque
FROM Produtos;
SELECT nome, marca, estoque
FROM Produtos
ORDER BY preco DESC
LIMIT 1;
SELECT * 
FROM Produtos
WHERE preco > (SELECT AVG(preco) FROM Produtos);
SELECT nacionalidade, COUNT(*) AS quantidade_produtos
FROM Produtos
GROUP BY nacionalidade;