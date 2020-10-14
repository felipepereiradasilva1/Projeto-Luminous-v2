create database luminous;
use luminous;

create table Usuario(
	IdUsuario int primary key auto_increment,
	Nome varchar(60),
	Email varchar(70),
	Senha varchar(10)
) auto_increment=100;


create table Cadastro(
	CNPJ char(14) primary key,
	nomeEmpresa varchar(50),
	Estado varchar(30),
	Cidade varchar(30),
	Rua varchar(100),
	Numero int,
	CEP char (8),
    telComercial varchar (15),
	fkUsuario int,
	foreign key (fkUsuario) references DadosAcesso(IdUsuario)
);
insert into DadosEmpresa values
(03020853000183, 'BandTest','São Paulo','São Paulo','Haddock Caramelo','77','Paulista','08000160','Starbucks', 100);
select * from DadosEmpresa, DadosAcesso where idEmpresa= fkEmpresa;
select * from DadosAcesso;
select * from DadosEmpresa;
select * from DadosAcesso;

create table sensor(
	idSensor int primary key auto_increment,
    lumens int
);




