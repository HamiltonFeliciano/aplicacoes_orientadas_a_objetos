CREATE DATABASE produtos_limpeza;

USE produtos_limpeza;

CREATE TABLE Produto(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    categoria VARCHAR(30) NOT NULL,
    dt_fabricacao DATE NOT NULL,
    dt_vencimento DATE NOT NULL,
    preco FLOAT NOT NULL,
    id_fornecedor INT,
    FOREIGN KEY(id_fornecedor) REFERENCES Fornecedor(id)
);

CREATE TABLE Cliente(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    id_endereco INT NOT NULL,
    telefone VARCHAR(12) NOT NULL,
    filiação VARCHAR(10) NOT NULL,
    status_cliente VARCHAR(10) NOT NULL,
    limite_credito FLOAT NOT NULL,
    FOREIGN KEY(id_endereco) REFERENCES Endereco(id)
);

CREATE TABLE Endereco(
	id INT PRIMARY KEY AUTO_INCREMENT,
    rua VARCHAR(30) NOT NULL,
    numero INT NOT NULL,
    sala VARCHAR(30) NOT NULL,
    cidade VARCHAR(30) NOT NULL,
    cep VARCHAR(15) NOT NULL,
    uf VARCHAR(15) NOT NULL
);

CREATE TABLE Pedido(
	id INT PRIMARY KEY AUTO_INCREMENT,
    data_pedido DATE NOT NULL,
    qtd_produtos INT NOT NULL,
    id_cliente INT,
    id_endereco INT,
    total FLOAT NOT NULL,
    FOREIGN KEY(id_cliente) REFERENCES Cliente(id),
    FOREIGN KEY(id_endereco) REFERENCES Endereco(id)
);

CREATE TABLE Produto_Pedido(
	id_produto INT,
    id_pedido INT,
    qtd_produto INT NOT NULL,
    FOREIGN KEY(id_produto) REFERENCES Produto(id),
    FOREIGN KEY(id_pedido) REFERENCES Pedido(id),
    PRIMARY KEY(id_produto, id_pedido)
);

CREATE TABLE Fornecedor(
	id INT PRIMARY KEY AUTO_INCREMENT,
    cnpj VARCHAR(15) NOT NULL,
    nome_fantasia VARCHAR(30) NOT NULL,
    telefone VARCHAR(12) NOT NULL,
    id_endereco INT,
    FOREIGN KEY(id_endereco) REFERENCES Endereco(id)
);
