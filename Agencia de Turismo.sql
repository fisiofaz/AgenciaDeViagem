-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Clientes (
id_cliente VARCHAR(20) PRIMARY KEY,
nome VARCHAR(20),
email VARCHAR(30),
telefone NUMERIC(15),
data_nascimento DATETIME,
cpf VARCHAR(20)
)

CREATE TABLE Reservas (
id_resenva VARCHAR(20) PRIMARY KEY,
data_reserva DATETIME,
atatus VARCHAR(20),
id_cliente VARCHAR(20),
id_pacote VARCHAR(20),
FOREIGN KEY(id_cliente) REFERENCES Clientes (id_cliente)
)

CREATE TABLE Destinos (
id_destino VARCHAR(50) PRIMARY KEY,
nome VARCHAR(30),
descrição VARCHAR(100),
preço DECIMAL(30)
)

CREATE TABLE Pacotes (
id_pacote VARCHAR(20) PRIMARY KEY,
nome VARCHAR(30),
descrição VARCHAR(100),
preço DECIMAL(20),
id_destino VARCHAR(50),
FOREIGN KEY(id_destino) REFERENCES Destinos (id_destino)
)

ALTER TABLE Reservas ADD FOREIGN KEY(id_pacote) REFERENCES Pacotes (id_pacote)
