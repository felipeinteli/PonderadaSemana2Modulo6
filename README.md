# PonderadaSemana2Modulo6

# Query MY SQL

CREATE DATABASE PonderadaSemana2;

USE PonderadaSemana2;

CREATE TABLE Paciente (
    ID_Paciente INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100)
);

CREATE TABLE UnidadeSaude (
    ID_Unidade INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Tipo VARCHAR(50)
);

CREATE TABLE ProdutoMedico (
    ID_Produto INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    QuantidadeEstoque INT
);

CREATE TABLE Veiculo (
    ID_Veiculo INT PRIMARY KEY AUTO_INCREMENT,
    Modelo VARCHAR(100)
);

CREATE TABLE TransportePaciente (
    ID_Transporte INT PRIMARY KEY AUTO_INCREMENT,
    ID_Veiculo INT,
    ID_UnidadeSaude INT,
    ID_Paciente INT,
    DataHora DATETIME,
    Tempo TIME,
    Avaliacao DECIMAL(3,2),
    FOREIGN KEY (ID_Veiculo) REFERENCES Veiculo(ID_Veiculo),
    FOREIGN KEY (ID_UnidadeSaude) REFERENCES UnidadeSaude(ID_Unidade),
    FOREIGN KEY (ID_Paciente) REFERENCES Paciente(ID_Paciente)
);

CREATE TABLE TransporteProduto (
    ID_Transporte INT PRIMARY KEY AUTO_INCREMENT,
    ID_Veiculo INT,
    ID_UnidadeSaude INT,
    ID_Produto INT,
    DataHora DATETIME,
    Tempo TIME,
    Avaliacao DECIMAL(3,2),
    FOREIGN KEY (ID_Veiculo) REFERENCES Veiculo(ID_Veiculo),
    FOREIGN KEY (ID_UnidadeSaude) REFERENCES UnidadeSaude(ID_Unidade),
    FOREIGN KEY (ID_Produto) REFERENCES ProdutoMedico(ID_Produto)
);

![image](https://github.com/felipeinteli/PonderadaSemana2Modulo6/assets/110630427/b4288a7d-03e7-48f2-b690-209e5af68e37)
