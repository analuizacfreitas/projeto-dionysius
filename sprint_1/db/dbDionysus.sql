create database Dionysus; 

use Dionysus; 

-- Tabelas

create table Vinho(
IDvinho int primary key,
tipo varchar(40),
temperatura varchar(40), 
umidade varchar(40)
); 

create table Ecommerce(
IDecommerce int primary key,
descricao varchar(100),
paisOrigem varchar(40),
preco int, 
IDVinho int, -- FK
IDProdutor int -- FK
);

create table Cliente( 
IDcliente int primary key, 
nome varchar(40),
CEP int,  
bairro varchar(40), 
email varchar(40)
);

create table Feedback(
IDFeedback int primary key,
feedback varchar(40),
IDcliente int -- FK
);

create table Produtor(
IDprodutor int primary key,
email varchar(40),
CEP int,
numeroDeTelefone int,
IDVinho int -- FK
);

create table Sensores(
IDsensor int primary key,
Nome varchar(40),
Tipo varchar(40),
IDprodutor int -- FK
);

create table VariacaoUmidade(
IDvariacao int primary key,
VariacaoDoSensor varchar(40),
HorarioDaVariacao varchar(40),
DataDaVariacao varchar(40),
IDsensor int -- FK
);

create table variacaoTemperatura(
IDvariacao int primary key,
VariacaoDoSensor varchar(40),
HorarioDaVariacao varchar(40),
DataDaVariacao varchar(40),
IDsensor int -- FK
);

-- Inserções

insert into Vinho values
(01, 'Espumante', '4°C a 10°C', '60% a 75%'),
(02, 'Vinho branco', '6°C a 12°C', '60% a 75%'),
(03, 'Vinho tinto leve', '12°C a 15°C', '60% a 75%'),
(04, 'Vinho tinto encorpado', '16°C a 18°C', '60% a 75%'),
(05, 'Vinho róse', '8°C a 12°C', '60% a 75%');

insert into Ecommerce values
(01, 'Vinho Tinto, saboroso para um jantar acompanhado com queijo', 'Argentina', 400, 02, 03),
(02, 'Vinho Espumante, saboroso para uma noite de com Fondue', 'Chile', 350, 01, 02);

insert into Cliente values 
(01, 'José Rutengo', 13789012, 'Brooklin', 'josérut@gmail.com'),
(02, 'Maria lordos', 65823054, 'Ipiranga', 'malordos@gmail.com'),
(03, 'João Feliz', 25486039, 'Saúde', 'joãofe@gmail.com'),
(04, 'Gabriel Estefano', 48514087, 'Aricanduva', 'gaestefe@gmail.com'),
(05, 'Henrique Horbes', 56203068, 'Belém', 'henrihorbes@gmail.com');

insert into Feedback values
(01, 'Uma delicia', 02),
(02, 'Horrivel, azedo', 05);

insert into Produtor values
(01, 'vinholandia@bandtec.com', 02418050, 1123841729, 02),
(02, 'localvinho@bandtec.com', 02418060, 1123841730, 03);

insert into Sensores values
(01,'bth11','umidade', 01),
(02,'lm35','temperatura', 01),
(03,'bth11','umidade', 02),
(04,'lm35','temperatura', 02);


insert into VariacaoTemperatura values
(01, '4° a 9°', '08:00', '08/03/21', 02),
(02, '5° a 10°', '16:00', '08/03/21', 02),
(03, '5° a 10°', '00:00', '09/03/21', 02);

 
insert into VariacaoUmidade values
(01, '63% a 75%', '08:00', '08/03/21', 01),
(02, '64% a 74%', '16:00', '08/03/21', 01),
(03, '63% a 74%', '00:00', '09/03/21', 01); 


-- Seleções

select * from Vinho; 

select * from Ecommerce;

select * from Cliente; 

select * from Feedback;

select * from Produtor;

select * from Sensores;

select * from VariacaoTemperatura;

select * from VariacaoUmidade;

