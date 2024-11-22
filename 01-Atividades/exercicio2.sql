CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
preco DECIMAL(6,2),
marca VARCHAR(255),
quantidade INT,
PRIMARY KEY(id)
);

INSERT INTO produtos(nome, preco, marca, quantidade)
			VALUES ("Celular",1500.50,"Samsung", 8),
				   ("Notebook",4000.90,"LG", 60),
                   ("Tablet",499.99,"Samsung", 54),
                   ("TV",2999.90,"Xiaomi", 12),
                   ("TV LED",3999.90,"LG", 57),
                   ("TV OLED",3499.90,"Samsung", 35),
                   ("TV Tubo",299.90,"Xiaomi", 21),
                   ("Rádio",290.90,"LG", 3); 
                   
SELECT * FROM produtos WHERE preco > 500;
SELECT * FROM produtos WHERE preco < 500;
                   
SELECT * FROM produtos;

UPDATE produtos SET preco = 390.90 WHERE id = 7;