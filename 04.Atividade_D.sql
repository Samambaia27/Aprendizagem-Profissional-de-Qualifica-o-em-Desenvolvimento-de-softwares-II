/* Impletação de Banco de Dados Relacional usandoMySQL */
/*01. Crindo Arquivo/Banco de Dados*/
create database empresa;
/*02. Acessando arquivo */ 
use empresa;
/*03. Criando a tabela cliente*/
create table cliente(
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
telefone varchar(12)
); 


create table compra(
codigo varchar(100),
quantidade_produto varchar(100)
);

create table produto(
codigo varchar(100),
descricao varchar(100),
valor varchar(100)
);