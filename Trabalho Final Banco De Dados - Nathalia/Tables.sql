CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE Livro (
  id INT NOT NULL AUTO_INCREMENT,
  titulo VARCHAR(255) NOT NULL,
  genero VARCHAR(45) NOT NULL,
  disponivel BOOLEAN NOT NULL,
  PRIMARY KEY (id)
  );
  
CREATE TABLE Aluno (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NULL,
  cpf VARCHAR(45) NULL,
  PRIMARY KEY (id)
);


CREATE TABLE Atendente (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  PRIMARY KEY (id)
  );
  
CREATE TABLE Biblioteca (
  id INT NOT NULL AUTO_INCREMENT,
  data_retirada DATE NOT NULL,
  data_entrega DATE NOT NULL,
  id_atendente INT NOT NULL,
  id_livro INT NOT NULL,
  id_aluno INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (id_atendente)REFERENCES Atendente(id),
  FOREIGN KEY (id_livro)REFERENCES Livro(id),
  FOREIGN KEY (id_aluno)REFERENCES Aluno(id)
  );
    
 





