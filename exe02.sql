CREATE DATABASE db_esmalteria;
USE db_esmalteria;

CREATE TABLE tb_produtosunha(
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	quantidade INT NOT NULL,
    Tipo VARCHAR (255) NOT NULL,
	preco DECIMAL(7.2 )NOT NULL
);

INSERT INTO tb_produtosunha(nome, quantidade, tipo, preco) 
VALUES ("esmaltes",500, "manicure tradicional", 4.00),
       ("acetona",300,"manicure tradiciona",3.00),
       ("alicate", 1000, "geral", 30.00),
        ("algodao", 2000 , "geral", 5.00),
	    ("amolecedor de cuticula", 500 , "geral", 10.00),
         ("esmaltes em gel", 1200, "unhas de gel", 15.00),
         ("cabine uv", 300, "unhas de gel", 50.00),
         ("motor",150, "unhas de gel",1500.00),
         ("prep",250,"unhas de gel",30.00),
         ("preparadores",1000,"unhas de gel",60.00),
         ("gel estrutural",5000,"unhas de gel",150.00),
         ("lixas",5000,"geral", 5.00),
         ("brocas",10000,"unhas de gel",20.00),
         ("extensores",300,"unhas de gel",30.00);
         
SELECT* FROM tb_produtosunha;

SELECT * FROM tb_produtosunha WHERE preco > 500.00;
SELECT * FROM tb_produtosunha WHERE preco < 500.00;

UPDATE tb_produtosunha SET preco = 100.00 WHERE Id = 7;

ALTER TABLE tb_produtosunha MODIFY preco DECIMAL(6,2);