CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categoria(
id_categoria INT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR (255) NOT NULL,
descrição VARCHAR (255) NOT NULL
);
CREATE TABLE tb_remedios (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (255) NOT NULL,
dosagem INT NOT NULL,
controlado BOOLEAN DEFAULT FALSE,
preco DECIMAL (6,2) NOT NULL,
id_categoria INT,
FOREIGN KEY (id_categoria) REFERENCES tb_categoria(id_categoria)
);
INSERT INTO tb_categoria (tipo, descrição) VALUES
('Analgésico', 'Medicamento para aliviar dores em geral'),
('Antibiótico', 'Usado no tratamento de infecções bacterianas'),
('Anti-inflamatório', 'Reduz inflamações e dores musculares'),
('Antialérgico', 'Trata sintomas de alergia'),
('Antitérmico', 'Controla e reduz a febre'),
('Ansiolítico', 'Utilizado para controle da ansiedade'),
('Antidepressivo', 'Indicado para tratamento da depressão'),
('Anticoncepcional', 'Previne gravidez e regula hormônios'),
('Antifúngico', 'Combate infecções causadas por fungos, como candidíase'),
('Antiviral', 'Ajuda a combater infecções virais, como gripe e herpes');

INSERT INTO tb_remedios (nome, dosagem, controlado, preco, id_categoria) VALUES
('Paracetamol', 500, FALSE, 12.90, 1),
('Ibuprofeno', 400, FALSE, 15.50, 3),
('Amoxicilina', 500, FALSE, 21.30, 2),
('Dipirona', 500, FALSE, 10.00, 4),
('Loratadina', 10, FALSE, 18.00, 5),
('Diazepam', 10, TRUE, 24.90, 6),
('Fluoxetina', 20, TRUE, 27.50, 7),
('Levotiroxina', 50, FALSE, 22.00, 8),
('Cetoconazol', 200, FALSE, 29.90, 9),
('Aciclovir', 400, FALSE, 35.00, 10);

SELECT * FROM tb_remedios;
SELECT * FROM tb_remedios WHERE preco > 50.00;
SELECT * FROM tb_remedios WHERE preco BETWEEN 50.00 AND 60.00;
SELECT * FROM tb_remedios WHERE nome  LIKE "%c%";

SELECT * FROM tb_remedios
INNER JOIN tb_categoria
ON tb_remedios.id_categoria = tb_categoria.id_categoria;

SELECT * FROM tb_remedios
INNER JOIN tb_categoria
ON tb_remedios.id_categoria = tb_categoria.id_categoria  WHERE tipo LIKE "%antialérgico%";


