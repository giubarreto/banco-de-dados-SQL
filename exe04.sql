CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255) NOT NULL,
    categoria VARCHAR(255) NOT NULL
);
CREATE TABLE tb_pizzas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sabor VARCHAR(100) NOT NULL,
    borda BOOLEAN DEFAULT FALSE,
    tamanho VARCHAR(255) NOT NULL,
    preco DECIMAL (6,2) NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (tipo, categoria) VALUES
('salgada','Tradicional'),
('doce','Doce com frutas'),
('doce','Doce com industrializados'),
('salgada','Vegetariana'),
('salgada','Especial'),
('salgada','Premium');

INSERT INTO tb_pizzas (sabor, borda, tamanho, preco, id_categoria) VALUES
('Calabresa', TRUE, 'Média', 39.90, 1),
('Mussarela', FALSE, 'Pequena', 32.50, 1),
('Portuguesa', TRUE, 'Grande', 44.90, 1),
('Pepperoni', TRUE, 'Média', 41.00, 1),
('Marguerita', FALSE, 'Grande', 42.00, 1),
('Vegetariana com Brócolis', FALSE, 'Grande', 42.50, 4),
('Quatro Queijos Vegana', TRUE, 'Média', 40.00, 4),
('Abobrinha com Tomate Seco', FALSE, 'Pequena', 35.90, 4),
('Frango com Catupiry', TRUE, 'Grande', 45.00, 5),
('Lombo com Requeijão', TRUE, 'Média', 43.50, 5),
('Carne Seca com Cheddar', TRUE, 'Grande', 47.90, 5),
('Camarão Premium', TRUE, 'Grande', 59.90, 6),
('Trufada com Presunto de Parma', TRUE, 'Média', 62.00, 6),
('Morango com Leite Condensado', FALSE, 'Pequena', 29.90, 2),
('Banana com Canela', FALSE, 'Média', 30.50, 2),
('Maçã com Doce de Leite', TRUE, 'Média', 33.00, 2),
('Brigadeiro com M&Ms', TRUE, 'Média', 34.90, 3),
('Oreo com Chocolate Branco', TRUE, 'Pequena', 36.50, 3),
('Prestígio', FALSE, 'Média', 32.90, 3),
('Nutella com Morango', TRUE, 'Grande', 38.90, 3);

SELECT * FROM tb_pizzas;
SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco > 50.00 AND preco <100.00;
SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias 
ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias 
ON tb_pizzas.id_categoria = tb_categorias.categoria LIKE "%tradicional%";

