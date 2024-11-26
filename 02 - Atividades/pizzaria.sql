CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id_categoria BIGINT AUTO_INCREMENT,
    tipo VARCHAR(255),
    descricao VARCHAR(255),
    PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_pizzas (
    id_pizza BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    ingredientes VARCHAR(255),
    preco DECIMAL(10, 2),
    id_categoria BIGINT,
    disponibilidade BOOLEAN DEFAULT TRUE,
    PRIMARY KEY (id_pizza),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (tipo, descricao)
VALUES 
('Tradicional', 'Pizzas tradicionais que todo mundo ama.'),
('Premium', 'Receitas exclusivas com ingredientes selecionados.'),
('Vegana', 'Opções sem ingredientes de origem animal, feitas para todos os públicos'),
('Doces', 'Pizzas doces que podem ser uma ótima sobremesa'),
('Especiais', 'Sabores únicos e sazonais, disponíveis por tempo limitado');

INSERT INTO tb_pizzas (nome, id_categoria, preco, ingredientes, disponibilidade)
VALUES 
('Mussarela', 1, 40.00, 'Mussarela, tomate e orégano', TRUE),
('Calabresa', 1, 50.00, 'Calabresa e cebola', TRUE),
('Quatro Queijos', 2, 60.00, 'Mussarela, provolone, parmesão e gorgonzola', TRUE),
('Portuguesa', 2, 70.00, 'Palmito, milho, ervilha, mussarela e ovo cozido', TRUE),
('Vegana de Legumes', 3, 80.00, 'Abobrinha, berinjela, tomate cereja, pimentão, cebola roxa, azeitonas pretas', TRUE),
('Vegana com Tofu', 3, 90.00, 'Cubos de tofu temperados, espinafre, cogumelos e milho verde', FALSE),
('Brigadeiro', 4, 100.00, 'Brigadeiro e granulado de chocolate', TRUE),
('Chocolate com Morango', 4, 110.00, 'Nutella e morangos frescos', TRUE);

SELECT * FROM tb_pizzas WHERE preco > 45;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT 
    tb_pizzas.id_pizza,
    tb_pizzas.nome,
    tb_pizzas.ingredientes,
    tb_pizzas.preco,
    tb_pizzas.disponibilidade,
    tb_categorias.tipo AS categoria_tipo,
    tb_categorias.descricao AS categoria_descricao
FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

SELECT 
    tb_pizzas.id_pizza,
    tb_pizzas.nome,
    tb_pizzas.ingredientes,
    tb_pizzas.preco,
    tb_pizzas.disponibilidade,
    tb_categorias.tipo,
    tb_categorias.descricao
FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.tipo = 'Tradicional'; 
   