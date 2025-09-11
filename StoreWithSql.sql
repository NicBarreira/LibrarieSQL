CREATE DATABASE loja;

USE loja;

CREATE TABLE tipos_clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(50) NOT NULL
);

CREATE TABLE clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    tipo_cliente_id INT,
    FOREIGN KEY (tipo_cliente_id) REFERENCES tipos_clientes(id)
);

CREATE TABLE tipos_produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(50) NOT NULL
);

CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    tipo_produto_id INT,
    valor_compra DECIMAL(10, 2) NOT NULL,
    valor_venda DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (tipo_produto_id) REFERENCES tipos_produtos(id)
);

CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    data_pedido DATE NOT NULL,
    valor_total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

CREATE TABLE itens_pedido (
    id INT PRIMARY KEY AUTO_INCREMENT,
    pedido_id INT,
    produto_id INT,
    quantidade INT NOT NULL,
    valor_unitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

INSERT INTO tipos_clientes (descricao) VALUES ('Regular');
INSERT INTO tipos_clientes (descricao) VALUES ('Premium');

INSERT INTO clientes (nome, tipo_cliente_id) VALUES ('João Silva', 1);
INSERT INTO clientes (nome, tipo_cliente_id) VALUES ('Maria Oliveira', 2);
INSERT INTO clientes (nome, tipo_cliente_id) VALUES ('Carlos Pereira', 1);

INSERT INTO tipos_produtos (descricao) VALUES ('Eletrônico');
INSERT INTO tipos_produtos (descricao) VALUES ('Vestuário');

INSERT INTO produtos(nome, tipo_produto_id, valor_compra, valor_venda) VALUES ('Iphone 15', 1, 800.00, 3800.00);
INSERT INTO produtos(nome, tipo_produto_id, valor_compra, valor_venda) VALUES ('Camisa ZARA', 2, 120.00, 190.00);
INSERT INTO produtos(nome, tipo_produto_id, valor_compra, valor_venda) VALUES ('MacBook', 1, 1000.00, 8000.00);
