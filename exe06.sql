CREATE DATABASE db_cidade_dos_vegetais;
USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);
CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    unidade_medida VARCHAR(20) NOT NULL, 
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);
INSERT INTO tb_categorias(tipo, descricao) VALUES
('Frutas', 'Alimentos doces ou cítricos, normalmente consumidos crus'),
('Verduras', 'Folhas e talos geralmente usados em saladas ou refogados'),
('Legumes', 'Partes comestíveis de plantas, geralmente cozidas'),
('Raízes', 'Alimentos cultivados no subsolo, como cenoura e batata'),
('Grãos', 'Sementes comestíveis como feijão, milho e soja'),
('Temperos Naturais', 'Ervas e especiarias usadas para dar sabor aos alimentos'),
('Orgânicos', 'Produtos cultivados sem agrotóxicos'),
('Minimamentes Processados', 'Itens lavados, cortados e embalados prontos para consumo');

INSERT INTO tb_produtos (nome, preco, unidade_medida, id_categoria) VALUES
('Banana', 4.50, 'kg', 1),        
('Maçã', 6.20, 'kg', 1),
('Alface', 2.00, 'maço', 2),       
('Couve', 2.50, 'maço', 2),
('Cenoura', 3.00, 'kg', 3),         
('Beterraba', 3.50, 'kg', 3),
('Batata', 3.80, 'kg', 4),          
('Mandioca', 2.90, 'kg', 4),
('Feijão Preto', 8.50, 'kg', 5),    
('Milho Verde', 5.00, 'kg', 5),
('Salsa', 1.20, 'maço', 6),         
('Coentro', 1.50, 'maço', 6),
('Tomate Orgânico', 7.00, 'kg', 7), 
('Alface Orgânico', 4.50, 'maço', 7),
('Mix Salada Lavada', 9.00, 'pacote', 8);

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome  LIKE "%c%";

SELECT * FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id_categoria;

SELECT * FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id_categoria  WHERE tipo LIKE "%verduras%";



