create database luminous;
use luminous;



-- criando e inserindo dados na tabela Empresa
create table Empresa(
	CNPJ char(14) primary key,
	nomeEmpresa varchar(50),
    telComercial varchar (15),
    complemento varchar(100)
);

insert into Empresa values
	('02905478439219', 'BandTec', '5664-6776','proximo ao ragazzo'),
    ('91919191919191', 'Itau', '9292-8992', 'Proximo ao metro');
    

-- criando e inserindo dados na tabela usuario
create table Usuario(
	IdUsuario int primary key auto_increment,
	Nome varchar(60),
	Email varchar(70),
	Senha varchar(10),
    fkCNPJ char(14),
    foreign key (fkcnpj) references Empresa(CNPJ)
) auto_increment=100;

insert into Usuario values
	(null,'Thiago Gimenez','thiago@bandtec.com.br','thiagoTI','02905478439219'),
    (null,'Fernando Brandão','brandao@bandtec.com.br','brandaoPI','02905478439219'),
    (null,'Vinicius Santos','vinicius@outlook.com','viniIT','91919191919191'),
    (null,'Gustavo Bolanos','guga@outlook.com','gugaIT','91919191919191');


-- criando e inserindo dados na tabela endereço
create table endereco (
	CEP char(8) primary key,
    logradouro varchar(80),
    cidade varchar(50),
    estado varchar(50),
    bairro varchar(60),
    fkCNPJ char(14),
    foreign key (fkCNPJ) references Empresa(CNPJ)
);

insert into endereco values
	('01414905','Rua Haddock Lobo','São Paulo','SP','Consolação','02905478439219'),
    ('32223344','Rua do itau', 'João Pessoa','Pariba','Bayer','91919191919191');


-- criando e inserindo dados na tabela predio
create table localidade(
	fkcnpj char(14),
    fkcep char(8),
    nomePredio varchar(60),
    numero varchar(60),
    complemento varchar(100),
    foreign key (fkCNPJ) references empresa(CNPJ),
    foreign key (fkCEP) references endereco(CEP),
    primary key (fkCNPJ, fkCEP)
);


insert into localidade values
	('02905478439219','01414905','Digital Building','595','Proximo ao ragazzo'),
    ('91919191919191','32223344','Edificio Itau','45','Proximo ao metro');

create table dados(
	idSensor int primary key auto_increment,
    lumens int,
    data_resgistro datetime,
    sala varchar(10),
    fk_fkcnpj char(14),
    fk_fkcep char(8),
    foreign key (fk_fkcnpj) references localidade(fkcnpj),
    foreign key (fk_fkcep) references localidade(fkcep)
);

desc dados;

insert into dados values 
	(null,300,'2020-10-05','sala 3A','02905478439219','01414905'),
    (null,500,'2020-10-24','sala 4','91919191919191','32223344');

select * from empresa;
select * from usuario;
select * from endereco;
select * from localidade;
select * from dados;




