-- DDL (Data Definition Language)
-- CRIA A BASE DE DADOS
CREATE DATABASE rh;

-- SELECIONA A BASE DE DADOS DESEJADA
USE rh;

-- CRIA A TABELA NA BASE DE DADOS
CREATE TABLE Funcionarios(
	matricula int,
    nome varchar(30),
    salario float,
    sexo char(1)
);

ALTER TABLE funcionarios ADD rg VARCHAR(20);
ALTER TABLE funcionarios MODIFY rg CHAR(12);
ALTER TABLE funcionarios RENAME COLUMN rg TO registro_geral;
ALTER TABLE funcionarios RENAME TO Funcionario;
ALTER TABLE funcionario DROP COLUMN registro_geral;

DROP TABLE funcionario;

-- DML (Data Manipulate Language)
-- INSERIR AS INFORMAÇÕES DENTRO DA TABELA
INSERT INTO Funcionarios(matricula,nome,salario,sexo) VALUES(1000,'Maria Silva',3500,'F');
INSERT INTO Funcionarios(matricula,nome,salario,sexo) VALUES(1001,'Robson Castro',4500,'M');
INSERT INTO Funcionarios(matricula,nome,salario,sexo) VALUES(1002,'Vicente Silva',5000,'M');
INSERT INTO Funcionarios(matricula,nome,salario,sexo) VALUES(1003,'Maria Souza',5589.10,'F');
INSERT INTO Funcionarios(matricula,nome,salario,sexo) VALUES(1004,'Tania Torres',8000.49,'F');
INSERT INTO Funcionarios(matricula,nome,salario,sexo) VALUES(1005,'Jonas Castro',2500,'M');
INSERT INTO Funcionarios(matricula,nome,salario,sexo) VALUES(1006,'Laurelice Silva',8500,'F');
INSERT INTO Funcionarios(matricula,nome,salario,sexo) VALUES(1007,'Marcos Mota',1500,'M');
INSERT INTO Funcionarios(matricula,nome,salario,sexo) VALUES(1008,'Francisco Teixeira',6300,'M');
INSERT INTO Funcionarios(matricula,nome,salario,sexo) VALUES(1009,'Maria Pereira',10500.50,'F');
INSERT INTO Funcionarios(matricula,nome,salario,sexo) VALUES(1010,'Humberto Silva',8600,'M');


-- MOSTRAR AS INFORMAÇÕES DENTRO DA TABELA
SELECT * FROM Funcionario;
SELECT matricula,nome FROM Funcionarios;
SELECT * FROM Funcionarios WHERE salario > 5000;
SELECT * FROM Funcionarios WHERE sexo='M';
SELECT * FROM Funcionarios WHERE nome='Maria Silva';
SELECT * FROM Funcionarios WHERE sexo='F' AND salario<=5000;
SELECT * FROM Funcionarios WHERE sexo='F' OR salario<=5000;
SELECT * FROM Funcionarios WHERE nome LIKE 'Maria%';
SELECT * FROM Funcionarios WHERE nome LIKE '%Silva';
SELECT * FROM Funcionarios WHERE matricula IN(1000,1005,1007,1010);

-- ALTERA AS INFORMAÇÕES DA TABELA
UPDATE funcionarios SET nome = 'Jonas Siqueira' WHERE matricula = 1005;
UPDATE funcionarios SET nome = 'Valeria Ramos', salario = 10000 WHERE matricula = 1008;

-- REMOVE AS INFORMAÇÕES DA TABELA
DELETE FROM funcionarios WHERE matricula = 1003;
DELETE FROM funcionarios;
