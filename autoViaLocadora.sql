create database autovialocadora;
use autovialocadora;

/*01. Criando Banco de Dados - Arquivos*/
/*Criando Tabelas*/
create table Marcas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL UNIQUE
);
create table Modelos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    id_marca INT,
    FOREIGN KEY  (id_marca) REFERENCES Marcas(id)
);
create table Veiculos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(10) NOT NULL UNIQUE,
    ano INT NOT NULL,
    cor VARCHAR(20),
    id_modelo INT,
    status ENUM('Disponível', 'Locado', 'Em Manutenção') DEFAULT 'Disponível',
    FOREIGN KEY (id_modelo) REFERENCES Modelos(id)
);

CREATE TABLE Clientes(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf Varchar(14) NOT NULL UNIQUE,
    telefone VARCHAR(15),
    endereco VARCHAR(255)
);
create table Contratos (
	id INT auto_increment primary key,
    id_clientes INT,
    id_veiculos INT,
    data_inicio DATE NOT NULL, 
    data_fim DATE, 
    valor_total DECIMAL(10, 2),
    FOREIGN KEY (id_clientes) REFERENCES Clientes(id),
    FOREIGN KEY (id_veiculos) REFERENCES Veiculos(id)
);
create table Pagamentos (
    id INT auto_increment PRIMARY KEY,
    id_contrato INT,
    data_pagamento DATE NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    metodo ENUM('Dinheiro', 'Cartão de Crédito', 'Transferência')
);

INSERT INTO Marcas (nome) VALUES 
('Chevrolet'),
('hyundai'),
('audi'),
('volkswagen'),
('mercedes-benz'),
('fiat'),
('renault'),
('kia'),
('jeep'),
('land rover'),
('subaru'),
('peugeot'),
('chrysler'),
('lexus'),
('mazda'),
('mitsubishi'),
('suzuki'),
('porsche'),
('jaguar'),
('infiniti'),
('alfa romeo'),
('buick'),
('cadillac'),
('lincol'),
('GMC');

SET FOREIGN_KEY_CHECKS=1; 
INSERT INTO Veiculos (placa, ano, cor, id_modelo) VALUES
('ABC1235', 2021, 'PRATA', 1),
('XYZ5679', 2022, 'CINZA', 2),
('LMN9102', 2020, 'PRETO', 3),
('DEF3456', 2021, 'BRANCO', 4),
('GHI7890', 2022, 'VERMELHO', 5),
('JKL0123', 2019, 'AZUL', 6),
('MNO4567', 2021, 'AMARELO', 7),
('PQR8901', 2020, 'VERDE', 8),
('STU2345', 2022, 'MARROM', 9),
('VWX6789', 2021, 'LARANJA', 10),
('YZA0123', 2019, 'ROXO', 11),
('BCD3456', 2022, 'BEGE', 12),
('EFG7890', 2021, 'DOURADO', 13),
('HIJ0123', 2020, 'PRATA', 14),
('KLM4567', 2022, 'CINZA', 15),
('NOP8901', 2021, 'BRANCO', 16),
('QRS2345', 2019, 'PRETO', 17),
('TUV6789', 2022, 'VERMELHO', 18),
('WXY0123', 2021, 'AZUL', 19),
('ZAB3456', 2020, 'AMARELO', 20),
('CDE7890', 2022, 'VERDE', 21),
('FGH01232', 2021, 'MARROM', 22),
('IJK4567', 2019, 'LARANJA', 23),
('LMN8901', 2022, 'ROXO', 24),
('OPQ2345', 2021, 'BEGE', 25),
('RST6789', 2020, 'DOURADO', 26),
('UVW0123', 2022, 'PRATA', 27),
('XYZ3456', 2021, 'CINZA', 28),
('ABC7890', 2020, 'BRANCO', 29),
('DEF0123', 2022, 'PRETO', 30);

SET FOREIGN_KEY_CHECKS=1; 
INSERT INTO clientes (nome, cpf, telefone, endereco) VALUES
('Ana Paula', '567.222.333-49', '(11) 91234-5678', 'Rua D, 123'),
('Bruno Stiva', '222.353.444-55', '(21) 92345-6789', 'Rua E, 456'),
('Clara Martins', '888.444.555-66', '(31) 93456-7898', 'Rua F, 789'),
('Dantel Souza', '444.555.666-77', '(41) 94567-8981', 'Rua G, 181'),
('Eva Almeida', '555.666.777-88', '(51) 95678-9012', 'Rua H, 202'),
('Fernando Lima', '666.778.888-99', '(61) 96789-0123', 'Rua I, 303'),
('Gabriela Costa','237.888.999-00', '(71) 97898-1234', 'Rua J, 484'),
('Henrique Oliveira', '888.999.800-11', '(81) 98901-2345', 'Rua K, 505'), 
('Isabela Pereira', '999.090.111-22', '(91) 99012-3456', 'Rua L, 606'),
('João Pedro', '090.111.222-33', '(11) 99123-4567', 'Rua M, 707'),
('Karina Sousa', '111.222.365-44', '(21) 99234-5678', 'Rua N, 888'),
('Lucas Andrade', '876.333.444-55', '(31) 99345-6789', 'Rua 0, 909'),
('Maria Clara', '333.444.555-66', '(41) 99456-7890', 'Rua P, 1010'),
('Nicolas Barbosa', '444.767.666-77', '(51) 99567-8901', 'Rua Q, 1111'),
('Olivia Silva', '845.666.777-88', '(61) 99678-9012', 'Rua R, 1212'),
('Paulo Henrique', '666.797.888-99', '(71) 99789-0123', 'Rua S, 1313'),
('Quetla Gomes', '787.845.999-00', '(81) 99890-1234', 'Rua T, 1414'),
('Rafael Lima', '888.999.000-11', '(91) 99901-2345', 'Rua U, 1515'),
('Sofia Castro', '999.006.111-22', '(11) 90012-3456', 'Rua V, 1616'),
('Tiago Almeida','000.111.222-33', '(21) 91123-4567', 'Rua W, 1717'),
('Ursula Ferreira','111.752.333-44', '(31) 92234-5678', 'Rua X, 1818'),
('Vitor Santos', '262.333.444-55', '(41) 93345-67893', 'Rua Y, 1919'),
('Wanda Campos', '234.444.555-66', '(51) 94156-7890', 'Rua Z, 2020'), 
('Xuxa Oliveira', '764.555.666-77', '(61) 95567-8901', 'Rua AA, 2121'), 
('Yuri Alves', '654.666.777-88', '(71) 96678-9012', 'Rua BB, 2222'), 
('Zara Costa', '686.777-888-99', '(81) 97789-0123','Rua CC, 2323'),
('Aline Lima', '777.838.999-00', '(91) 98890-1234', 'Rua DD, 2424'),
('Bernardo Sousa', '888.969.009-11', '(11) 99901-2345', 'Rua EE, 2525'),
('Carla Mendes', '999.000.111-22', '(21) 90012-3456', 'Rua FF, 2626'), 
('Diego Santos', '065.111.222-33', '(31) 91123-4567', 'Rua GG, 2727');]

INSERT INTO Contratos (id_clientes, id_veiculos, data_inicio, data_fim, valor_total) VALUES
(1, 1, '2024-07-01', '2024-07-10', 500.00);

/*Inserindo registos nas tabelas*/
INSERT INTO Marcas (nome) VALUES 
('Toyota'), 
('Honda'), 
('Ford');

INSERT INTO Modelos (nome, id_marca) VALUES
('Corolla', 1),
('Civic', 2),
('Focus', 3);

INSERT INTO Veiculos (placa, ano, cor, id_modelo) VALUES 
('ABC1234', 2020, 'Preto', 1), 
('XVZ5678', 2021, 'Branco', 2), 
('LMN9101', 2019, 'Azul', 3);

INSERT INTO Clientes (nome, cpf, telefone, endereco) VALUES
('Carlos Silva', '123.456.789-00', '(11) 98765-4321', 'Rua A, 123'), 
('Maria Oliveira', '234.587.890-11', '(21) 98765-4321', 'Rua B, 456'), 
('João Santos', '345.678.901-22', '(31) 98765-4321', 'Rua C, 789'); 
INSERT INTO Contratos (id_clientes, id_veiculos, data_inicio, data_fim, valor_total) VALUES
(1, 1, '2024-08-01', '2024-08-07', 350.00),
(2, 2, '2024-08-05', NULL, NULL),
(3, 3, '2024-08-10', '2024-08-15', 400.00);

INSERT INTO Pagamentos (id_contrato, data_pagamento, valor, metodo) VALUES
(1, '2024-08-01', 350.00, 'Cartão de Crédito'), 
(3, '2024-08-10', 400.00, 'Dinheiro');
