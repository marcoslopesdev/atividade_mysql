CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
    id_classe BIGINT AUTO_INCREMENT,
    raridade VARCHAR(255),
    caracteristica VARCHAR(255),
    PRIMARY KEY (id_classe)
);

CREATE TABLE tb_personagens (
    id_personagem BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    tipoPoder VARCHAR(255),
    ataque INT,
    defesa INT,
    paisOrigem VARCHAR(255),
    id_classe BIGINT,
    PRIMARY KEY (id_personagem),
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe)
);

INSERT INTO tb_classes (raridade, caracteristica)
VALUES 
    ('Comum', 'Duelista'),
    ('Imortal', 'Controlador'),
    ('Raro', 'Suporte'),
    ('Divino', 'Defesa'),
    ('Lendário', 'Controlador');

INSERT INTO tb_personagens (nome, tipoPoder, ataque, defesa, paisOrigem, id_classe)
VALUES 
    ('Moginsk', 'Fogo', 1700, 2500, 'Itália', 1),
    ('Isatan', 'Água', 3000, 1000, 'Brasil', 2),
    ('Arugor', 'Gelo', 2340, 1500, 'México', 3),
    ('Guaram', 'Ar', 1500, 2100, 'Romênia', 4),
    ('Biridor', 'Mágia', 1200, 1700, 'Japão', 5),
    ('Suzask', 'Terra', 3400, 3900, 'Turquia', 1),
    ('Igarot', 'Ar', 4000, 3300, 'Argélia', 2),
    ('Salem', 'Água', 2200, 2600, 'Mongólia', 3);
    
    SELECT * FROM tb_personagens WHERE ataque < 2000;
    
    SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;
    
    SELECT * FROM tb_personagens WHERE nome LIKE "%g%";
    
    SELECT 
    tb_personagens.id_personagem, 
    tb_personagens.nome, 
    tb_personagens.tipoPoder, 
    tb_personagens.ataque, 
    tb_personagens.defesa, 
    tb_personagens.paisOrigem, 
    tb_classes.raridade, 
    tb_classes.caracteristica
	FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id_classe;
    
    SELECT 
    tb_personagens.id_personagem, 
    tb_personagens.nome, 
    tb_personagens.tipoPoder, 
    tb_personagens.ataque, 
    tb_personagens.defesa, 
    tb_personagens.paisOrigem, 
    tb_classes.raridade, 
    tb_classes.caracteristica
	FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id_classe
    WHERE tb_classes.caracteristica = 'Controlador';