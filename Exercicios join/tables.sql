drop database JOINS; 
create database JOINS;
use JOINS;


create table vendedor(
	id int primary key,
	nome varchar(100),
	cidade varchar(100),
	comissao double
);

create table cliente(
	id int primary key,
	nome varchar(100),
	cidade varchar(100),
	classificacao int,
	vendedor_id int,
	FOREIGN KEY (vendedor_id) references vendedor(id)
);

create table pedido(
	numero int primary key,
	valor double,
	data date,
	cliente_id int,
	vendedor_id int,
	foreign key (vendedor_id) references vendedor(id),
	foreign key (cliente_id) references cliente(id)
);

insert into vendedor (id, nome, cidade, comissao) values
(5001, 'James Hoog', 'New York', 0.15),
(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex', 'London', 0.11),
(5006, 'Mc Lyon', 'Paris', 0.14),
(5003, 'Lauson Hen', null, 0.12),
(5007, 'Paul Adam', 'Rome', 0.13);


insert into cliente (id, nome, cidade, classificacao, vendedor_id) values
(3002, 'Nick Rimando', 'New York', 100, 5001),
(3005, 'Graham Zusi', 'California', 200, 5002),
(3001, 'Brad Guzan', 'London', null, 5005),
(3004, 'Fabian Johns', 'Paris', 300, 5006),
(3007, 'Brad Davis', 'New York', 200, 5001),
(3009, 'Geoff Camero', 'Berlin', 100, 5003),
(3008, 'Julian Green', 'London', 300, 5002),
(3003, 'Jozy Altidor', 'Moscow', 200, 5007);


insert into pedido (numero, valor, data, cliente_id, vendedor_id) values
(70001, 150.5  , '2012-10-05', 3005, 5002),
(70009, 270.65 , '2012-09-10', 3001, 5005),
(70002, 65.26  , '2012-10-05', 3002, 5001),
(70004, 110.5  , '2012-08-17', 3009, 5003),
(70007, 948.5  , '2012-09-10', 3005, 5002),
(70005, 2400.6 , '2012-07-27', 3007, 5001),
(70008, 5760   , '2012-09-10', 3002, 5001),
(70010, 1983.43, '2012-10-10', 3004, 5006),
(70003, 2480.4 , '2012-10-10', 3009, 5003),
(70012, 250.45 , '2012-06-27', 3008, 5002),
(70011, 75.29  , '2012-08-17', 3003, 5007),
(70013, 3045.6 , '2012-04-25', 3002, 5001);