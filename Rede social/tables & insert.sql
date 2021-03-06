CREATE DATABASE REDE_SOCIAL;
USE REDE_SOCIAL;

CREATE TABLE USUARIO (
ID INT NOT NULL AUTO_INCREMENT,
NOME VARCHAR (50) NOT NULL,
EMAIL VARCHAR(100) NOT NULL,
SENHA VARCHAR(100) NOT NULL,
PRIMARY KEY(ID)
);

INSERT INTO USUARIO (NOME,EMAIL,SENHA) VALUE
('NATHÁLIA','NATHALIA@GMAIL.COM','12345'),
('ARTHUR','ARTHUR@GMAIL.COM','12385'),
('JOAO PEDRO','JOAOPEDRO@GMAIL.COM','12375');

CREATE TABLE POSTAGEM(
ID INT NOT NULL AUTO_INCREMENT,
ID_USUARIO INT NOT NULL,
NOME_PAGINA VARCHAR(30) NOT NULL,
DATA_HORA_POSTAGEM DATETIME NOT NULL,
CONTEUDO VARCHAR (100) NOT NULL,
PRIMARY KEY(ID),
FOREIGN KEY(ID_USUARIO) REFERENCES USUARIO(ID)
);

INSERT INTO POSTAGEM (ID_USUARIO,NOME_PAGINA,DATA_HORA_POSTAGEM,CONTEUDO) VALUE
(1,'TYRA DA DEPRESSAO',NOW(),'HOJE ESTA FALTANDO MUITA LUZ'),
(2,'GOTHAM',NOW(),'ALERTA DE SPOILER'),
(3,'MISTER M',NOW(),'MAGICO FAZENDO MAGICA');

 CREATE TABLE REACAO(
 ID INT NOT NULL AUTO_INCREMENT,
 DESCRICAO VARCHAR(10) NOT NULL,
 PRIMARY KEY (ID)
 );
 
 INSERT INTO REACAO (DESCRICAO) VALUE
  ('LEGAL'), ('CHATO');
 
 
 CREATE TABLE REACAO_USUARIO(
 ID INT NOT NULL AUTO_INCREMENT,
 ID_USUARIO INT NOT NULL,
 ID_REACAO INT NOT NULL,
 PRIMARY KEY(ID),
 FOREIGN KEY(ID_USUARIO) REFERENCES USUARIO(ID),
 FOREIGN KEY(ID_REACAO) REFERENCES REACAO(ID)
 );
 
  INSERT INTO REACAO_USUARIO(ID_USUARIO,ID_REACAO) VALUE
  (1,1), (2,1),(3,2);
 
CREATE TABLE REACAO_POSTAGEM(
 ID INT NOT NULL AUTO_INCREMENT,
 ID_REACAO_USUARIO INT NOT NULL,
 ID_POSTAGEM INT NOT NULL,
 PRIMARY KEY(ID)
 );
 
 INSERT INTO REACAO_POSTAGEM(ID_REACAO_USUARIO,ID_POSTAGEM) VALUE
  (1,1), (2,1),(3,2);
 
 CREATE TABLE COMENTARIO(
 ID INT NOT NULL AUTO_INCREMENT,
 ID_POSTAGEM INT NOT NULL,
 ID_USUARIO INT NOT NULL,
 MENSAGEM VARCHAR(100) NOT NULL,
 PRIMARY KEY(ID),
 FOREIGN KEY(ID_POSTAGEM) REFERENCES POSTAGEM(ID),
 FOREIGN KEY(ID_USUARIO) REFERENCES USUARIO(ID)
 );
 
 INSERT INTO COMENTARIO(ID_POSTAGEM,ID_USUARIO,MENSAGEM) VALUE
  (1,1,'OIE  '),(2,2,'OII'),(3,3,'OIIEE');
 

 SELECT * FROM COMENTARIO;SELECT * FROM POSTAGEM;SELECT * FROM REACAO; SELECT * FROM REACAO_POSTAGEM; SELECT * FROM REACAO_USUARIO; SELECT * FROM USUARIO;