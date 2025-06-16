select @@version;
CREATE DATABASE db_rhtecnologia;
USE db_rhtecnologia;

CREATE TABLE tb_funcionarios (
 id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
cargo VARCHAR (255) NOT NULL,
especialidade VARCHAR (255) ,
salario DECIMAL (7,2) NOT NULL
);

INSERT INTO tb_funcionarios(nome, cargo, especialidade, salario) 
values ("Carol","junior", "back-end", 6000.00);
INSERT INTO tb_funcionarios(nome, cargo, especialidade, salario)  
values ("Gabriel","senior", "back-end", 22000.00);
INSERT INTO tb_funcionarios(nome, cargo, especialidade, salario) 
values ("Marcela","pleno", "back-end", 12000.00);
INSERT INTO tb_funcionarios(nome, cargo, especialidade, salario) 
values ("Gabriela","junior", "front-end", 6000.00);
INSERT INTO tb_funcionarios(nome, cargo, especialidade, salario) 
values ("Patricia","senior", "front-end", 22000.00);
INSERT INTO tb_funcionarios(nome, cargo, salario)  
values ("Maria","auxiliar de limpeza",  1600.00 );
INSERT INTO tb_funcionarios(nome, cargo, salario)  
values ("Ana Clara","recepcionista",  1800.00 );
INSERT INTO tb_funcionarios(nome, cargo, salario)  
values ("joao","marketing digital",  7500.00 );
INSERT INTO tb_funcionarios(nome, cargo, especialidade, salario)  
values ("rafael","senior", "analista de banco de dados", 16000.00 );
INSERT INTO tb_funcionarios(nome, cargo, salario)  
values ("Lucas","financeiro",  8000.00 );
INSERT INTO tb_funcionarios(nome, cargo, especialidade, salario)  
values ("Larissa","senior", "tech leader", 35000.00 );

SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario > 2000.00;
SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

UPDATE tb_funcionarios SET salario = 9000.00 WHERE Id = 8;


