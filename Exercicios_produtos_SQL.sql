CREATE TABLE produtos (
  id INT PRIMARY KEY,
  nome VARCHAR(150),
  preco DECIMAL(10,2)
);

Alter table produtos
ADD descricao varchar (200);

Rename table produtos to tb_produtos;

DROP table tb_produtos;



