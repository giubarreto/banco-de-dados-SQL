CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	anoescola  INT  NOT NULL,
    fase VARCHAR(255) NOT NULL,
    notas1Bi DECIMAL(4,2) NOT NULL,
    notas2Bi DECIMAL(4,2) NOT NULL,
    notas3Bi DECIMAL(4,2) NOT NULL,
    notas4Bi DECIMAL(4,2) NOT NULL,
	media DECIMAL(4,2) NOT NULL
);

INSERT INTO tb_estudantes(nome, anoescola, fase,notas1bi,notas2bi,notas3bi,notas4bi, media)
VALUES ("Lucas", 4 , "ensino fundamental", 8.0, 7.0, 9.0, 7.5, 8.0),
("giulia", 1 ,"ensino medio",9.0,8.0,8.0,7.0, 8.0),
("jaqueline", 2, "ensino medio", 6.0,7.5,8.0,6.0,6.8),
("roberto", 5, "ensino fundamental",8.0,8.5,7.0,7.0, 7.6),
("laura", 3, "ensino medio", 8.0,7.0,5.0,9.0, 7.25),
("paulo", 9, "ensino fundamental", 9.0,10,9.5,8.0,9.1);

SELECT * FROM tb_estudantes;
SELECT * FROM tb_estudantes WHERE media > 7.0;
SELECT * FROM tb_estudantes WHERE media < 7.0;

UPDATE tb_estudantes SET anoescola = 6 WHERE Id = 4

