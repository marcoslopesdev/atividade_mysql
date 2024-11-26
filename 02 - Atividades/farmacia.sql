CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id_categoria BIGINT AUTO_INCREMENT,
    nomeCategoria VARCHAR(255),
    descricaoCategoria VARCHAR(255),
    PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_produtos (
    id_produto BIGINT AUTO_INCREMENT,
    nomeProduto VARCHAR(255),
    preco DECIMAL(10, 2),
    quantidadeEstoque INT,
    id_categoria BIGINT,
    PRIMARY KEY (id_produto),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nomeCategoria, descricaoCategoria)
VALUES 
('Remédios', 'Produtos para tratamentos médicos e saúde'),
('Cosméticos', 'Produtos para cuidados pessoais e beleza'),
('Higiene', 'Produtos para higiene pessoal e limpeza'),
('Vitaminas', 'Produtos para complementar a saúde'),
('Infantis', 'Produtos para crianças e bebês');

INSERT INTO tb_produtos (nomeProduto, preco, quantidadeEstoque, id_categoria)
VALUES 
('Dipirona', 12.50, 100, 1),
('Dorflex', 15.30, 150, 1),
('Shampoo', 20.00, 50, 2),
('Condicionador', 25.00, 30, 2),
('Sabonete', 7.80, 200, 3),
('Pasta de Dente', 8.40, 180, 3),
('Centrum', 150.00, 20, 4),
('Nan', 120.00, 80, 5);

SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;

SELECT * FROM tb_produtos WHERE nomeProduto LIKE "%c%";

SELECT 
    tb_produtos.id_produto,
    tb_produtos.nomeProduto,
    tb_produtos.preco,
    tb_produtos.quantidadeEstoque,
    tb_categorias.nomeCategoria,
    tb_categorias.descricaoCategoria
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria;
    
SELECT 
    tb_produtos.id_produto,
    tb_produtos.nomeProduto,
    tb_produtos.preco,
    tb_produtos.quantidadeEstoque,
    tb_categorias.nomeCategoria,
    tb_categorias.descricaoCategoria
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nomeCategoria = 'Remédios';