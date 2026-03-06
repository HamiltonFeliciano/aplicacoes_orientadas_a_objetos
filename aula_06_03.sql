CREATE TABLE Cliente(
    id INT PRIMARY KEY,
    nome VARCHAR(50)
);

INSERT INTO Cliente(id, nome) VALUES(1, 'Maria Silva');
SELECT * FROM Cliente;

CREATE TABLE Endereco(
    id INT PRIMARY KEY,
    logradouro VARCHAR(100)
    
);

INSERT INTO Endereco(id, logradouro) VALUES(200, 'Rua ABC, 100');
INSERT INTO Endereco(id, logradouro) VALUES(202, 'Tvs XYZ, 50');
INSERT INTO Endereco(id, logradouro) VALUES(203, 'Rua Qualquer, 10');
SELECT * FROM Endereco;

CREATE TABLE Produto(
    id INT PRIMARY KEY,
    produto VARCHAR(30),
    preco_un FLOAT
);

INSERT INTO Produto(id, produto, preco_un) VALUES(300, 'A', 10);
INSERT INTO Produto(id, produto, preco_un) VALUES(301, 'B', 15);
INSERT INTO Produto(id, produto, preco_un) VALUES(302, 'C', 10);
INSERT INTO Produto(id, produto, preco_un) VALUES(303, 'D', 50);
INSERT INTO Produto(id, produto, preco_un) VALUES(304, 'E', 20);
INSERT INTO Produto(id, produto, preco_un) VALUES(305, 'F', 30);
SELECT * FROM Produto;

CREATE TABLE Pedido(
    id INT PRIMARY KEY,
    data DATE,
    total FLOAT,
    id_cliente INT,
    id_endereco INT UNIQUE,
    FOREIGN KEY(id_cliente) REFERENCES Cliente(id),
    FOREIGN KEY(id_endereco) REFERENCES Endereco(id)
);

CREATE TABLE Itens_Pedido(
    id_pedido INT,
    id_produto INT,
    quantidade INT,
    subtotal FLOAT,
    PRIMARY KEY(id_pedido, id_produto),
    FOREIGN KEY(id_pedido) REFERENCES Pedido(id),
    FOREIGN KEY(id_produto) REFERENCES Produto(id)
);

