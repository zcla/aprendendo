CREATE DATABASE livros CHARACTER SET utf8 COLLATE utf8_general_ci;

USE livros;

CREATE TABLE Livros (
    id INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(255) NOT NULL,
    tituloAlternativo VARCHAR(255) NULL,
    subtitulo VARCHAR(255) NULL,
    colecao VARCHAR(255) NULL,
    obraCompleta VARCHAR(255) NULL,
    volume INT NULL,
    autoria VARCHAR(255) NULL,
    editora VARCHAR(255) NULL,
    ano INT NULL,
    isbn VARCHAR(255) NULL,
    edicao VARCHAR(255) NULL,
    paginas INT NOT NULL,
    idioma VARCHAR(255) NOT NULL,
    traducao VARCHAR(255) NULL,
    organizacao VARCHAR(255) NULL,
    PRIMARY KEY (id)
);

INSERT INTO Livros (titulo, tituloAlternativo, autoria, editora, ano, paginas, idioma)
    VALUES ('Saltério da Virgem', 'Saltério Maior da Bem-Aventurada Virgem Maria', 'São Boaventura', 'Minha Biblioteca Católica', 2020, 222, 'português');
