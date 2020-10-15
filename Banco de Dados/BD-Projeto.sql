create database luminous;
use luminous;

create table Usuario(
	IdUsuario int primary key auto_increment,
	Nome varchar(60),
	Email varchar(70),
	Senha varchar(10),
    fkCNPJ char(14),
    foreign key (fkcnpj) references Empresa(CNPJ)
) auto_increment=100;


create table Empresa(
	CNPJ char(14) primary key,
	nomeEmpresa varchar(50),
    telComercial varchar (15),
	numero varchar(10),
    complemento varchar(100)
);

create table dados(
	idSensor int primary key auto_increment,
    lumens int,
    data_resgistro datetime,
    local_sensor varchar(40),
    fkCNPJ char (14),
    foreign key (fkCNPJ) references Empresa(CNPJ)
);

create table endereco (
	CEP char(8) primary key,
    logradouro varchar(80),
    cidade varchar(50),
    estado varchar(50),
    bairro varchar(60),
    fkCNPJ char(14),
    foreign key (fkCNPJ) references Empresa(CNPJ)
);






