CREATE DATABASE rh;

USE rh;

CREATE TABLE Funcionarios(
	matricula INT,
    nome VARCHAR(30),
    salario FLOAT,
    sexo CHAR(1)
);

INSERT INTO Funcionarios(matricula, nome, salario, sexo) VALUES (1000, 'Maria Silva', 3500, 'F');
INSERT INTO Funcionarios(matricula, nome, salario, sexo) VALUES (1001, 'Robson Castro', 4500, 'M');
INSERT INTO Funcionarios(matricula, nome, salario, sexo) VALUES (1002, 'Vicente Silva', 5000, 'M');
INSERT INTO Funcionarios(matricula, nome, salario, sexo) VALUES (1003, 'Maria Souza', 5589.10, 'F');
INSERT INTO Funcionarios(matricula, nome, salario, sexo) VALUES (1004, 'Tania Torres', 8000.49, 'F');
INSERT INTO Funcionarios(matricula, nome, salario, sexo) VALUES (1005, 'Jonas Castro', 2500, 'M');
INSERT INTO Funcionarios(matricula, nome, salario, sexo) VALUES (1006, 'Laurelice Silva', 8500, 'F');
INSERT INTO Funcionarios(matricula, nome, salario, sexo) VALUES (1007, 'Marcos Mota', 1500, 'M');
INSERT INTO Funcionarios(matricula, nome, salario, sexo) VALUES (1008, 'Francisco Teixeira', 6300, 'M');
INSERT INTO Funcionarios(matricula, nome, salario, sexo) VALUES (1009, 'Maria Pereira', 10500.50, 'F');
INSERT INTO Funcionarios(matricula, nome, salario, sexo) VALUES (1010, 'Humberto Silva', 8600, 'M');

SELECT * FROM Funcionarios;
