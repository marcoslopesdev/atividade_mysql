CREATE DATABASE db_escola;
USE  db_escola;

CREATE TABLE alunos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
nota DECIMAL(4,2),
turma VARCHAR(255),
matricula INT,
idade INT,
PRIMARY KEY(id)
);

INSERT INTO alunos(nome, nota, turma, matricula, idade)
			VALUES ("Marcos",4.5,"A", 761587, 16),
				   ("André",8.9,"B", 982456, 15),
                   ("Maria",10.0,"A", 967415, 16),
                   ("Jessica",7.9,"B", 325871, 15),
                   ("Lucio",2.8,"A", 985472, 16),
                   ("Bruno",6.6,"A", 987154, 16),
                   ("Camila",5.9,"B", 132547, 15),
                   ("Tiago",3.2,"B", 965874, 15);


SELECT * FROM alunos WHERE nota > 7;
SELECT * FROM alunos WHERE nota < 7;

UPDATE alunos SET nota = 10.0 WHERE id = 8;

SELECT * FROM alunos;