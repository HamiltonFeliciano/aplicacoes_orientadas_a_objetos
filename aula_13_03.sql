Paste2
Create Paste
Followup Paste
QR
CREATE DATABASE CONTROLECORRIDA;

USE CONTROLECORRIDA;

CREATE TABLE Cliente(
	id int primary key auto_increment,
    nome varchar(50),
    logradouro varchar(100),
    bairro varchar(30),
    cidade varchar(30),
    estado char(2),
    telefone char(13)
);

CREATE TABLE Taxista(
	id int primary key auto_increment,
    nome varchar(50),
    logradouro varchar(100),
    bairro varchar(30),
    cidade varchar(30),
    estado char(2),
    telefone char(13),
    num_cart char(8),
    categoria char(1),
    validade date
);

CREATE TABLE Carro(
	id int primary key auto_increment,
    fabricante varchar(10),
    modelo varchar(10),
    cor varchar(10),
    placa char(8)
);

CREATE TABLE Carro_Taxista(
	id int primary key auto_increment,
    logradouro_i varchar(100),
    bairro_i varchar(30),
    cidade_i varchar(30),
    estado_i char(2),
	logradouro_f varchar(100),
    bairro_f varchar(30),
    cidade_f varchar(30),
    estado_f char(2),
    id_taxista int,
    id_carro int,
    foreign key (id_taxista) references Taxista(id),
    foreign key (id_carro) references Carro(id)
);

CREATE TABLE Controle_Corrida(
	id int primary key auto_increment,
    id_cliente int,
    id_carro_taxista int,
	data_hora_i datetime,
    data_hora_f datetime,
    foreign key (id_cliente) references Cliente(id),
    foreign key (id_carro_taxista) references Carro_Taxista(id)
);

© 2006 - 2026 Paste2.org.
Follow paste2.org on Twitter
