CREATE TABLE Estado(
    codigo INT,
    sigla CHAR(2),
    PRIMARY KEY(codigo)
);

INSERT INTO Estado(codigo, sigla) VALUES(1, 'SP');
INSERT INTO Estado(codigo, sigla) VALUES(2, 'RJ');
INSERT INTO Estado(codigo, sigla) VALUES(3, 'MG');
INSERT INTO Estado(codigo, sigla) VALUES(4, 'ES');

SELECT * FROM Estado;

CREATE TABLE Cliente(
    codigo INT,
    nome VARCHAR(30),
    codigo_estado INT,
    PRIMARY KEY(codigo),
    FOREIGN KEY (codigo_estado) REFERENCES Estado(codigo)
);

INSERT INTO CLIENTE(codigo, nome, codigo_estado) VALUES(1000, 'Maria Silva', 4);
INSERT INTO CLIENTE(codigo, nome, codigo_estado) VALUES(1001, 'Pedro Torres', 4);

SELECT * FROM Cliente;
