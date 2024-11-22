CREATE DATABASE db_rh;

USE db_rh;

-- cria uma tabela chamada colaboradores
CREATE TABLE colaboradores(
	id BIGINT AUTO_INCREMENT, -- BIGINT é para números inteiros muito grande / AUTO_INCREMENTE é para o id ir incrementando automaticamente
    nome VARCHAR(255), -- VARCHAR é o equivalente a String
    data_admissao DATE, -- sempre usar com aspas, assim como os dados VARCHAR
    cargo VARCHAR(255),
    salario DECIMAL(6,2), -- nesse caso, o salario terá um total de 6 dígitos, sendo 2 deles após a vírgula
    PRIMARY KEY(id)
);

-- insere informações na tabela
INSERT INTO colaboradores(nome, data_admissao, cargo, salario)
			VALUES ("Marcos","2024-10-16","Desenvolvedor Sênior", 9000),
				   ("André","2024-09-16","Desenvolvedor Pleno", 8000),
                   ("Joana","2024-08-16","Desenvolvedora Júnior", 4000),
                   ("Lucia","2024-07-16","Estágiaria", 1500),
                   ("Rogério","2024-06-16","Estágiario", 1600);
                   
SELECT * FROM colaboradores WHERE salario > 2000; -- exibe colaboradores que recebem mais de 2000 reais
SELECT * FROM colaboradores WHERE salario < 2000; -- exibe colaboradores que recebem menos de 2000 reais

-- inserir nova informação na tabela colaboradores
INSERT INTO colaboradores(nome, data_admissao, cargo, salario)
			VALUES ("Maria","2024-03-14","Desenvolvedor Sênior", 1950);

-- exibir informações da tabela colaboradores
SELECT * FROM colaboradores;

-- atualizar informações
UPDATE colaboradores SET cargo = "Desenvolvedor Pleno" WHERE id = 3;
            