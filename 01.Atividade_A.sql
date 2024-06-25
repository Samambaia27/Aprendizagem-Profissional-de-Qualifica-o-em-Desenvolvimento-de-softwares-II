/*criando banco de dados*/
create database empresa;
use empresa;
create table clinte(
	nome varchar(100),
    cpf int(11),
    endereco varchar(100),
    email varchar(100),
    telefone varchar(12),
    uf char(2) 
);
/*criando tabela*/

create table fornecedor(
codigo varchar(100),
nome varchar(100),
telefone varchar(12),
); 


create table compra(
codigo varchar(100),
quantidade_produto(100),
); 

create table produto(
codigo varchar(100),
descricao varchar(100),
valor varchar(100), 
);
