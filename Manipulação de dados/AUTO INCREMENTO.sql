
/*CRIANDO TABELA E ADD AUTO INCREMENTO */
CREATE TABLE TAB_IDENTITY (ID INT AUTO_INCREMENT,
 DESCRITOR VARCHAR(20), PRIMARY KEY(ID));
 
 INSERT INTO TAB_IDENTITY (DESCRITOR)VALUES('CLIENTES 2'),('CLIENTE 3');
 SELECT*FROM TAB_IDENTITY;
 
DELETE FROM TAB_IDENTITY WHERE ID =2;
SELECT*FROM TAB_IDENTITY;

 INSERT INTO TAB_IDENTITY (DESCRITOR)VALUES('CLIENTE 4'),
 ('CLIENTE 5');
 SELECT*FROM TAB_IDENTITY;
 
 
 
 /*DELETANDO VALOR*/
 DELETE FROM TAB_IDENTITY WHERE ID=5;
 
  INSERT INTO TAB_IDENTITY (DESCRITOR)VALUES('CLIENTE '),
 ('CLIENTE ');
 SELECT*FROM TAB_IDENTITY;
 
 
 
 /*FORÇANDO ID=100*/
   INSERT INTO TAB_IDENTITY (ID,DESCRITOR)VALUES(100,'CLIENTE ');
 SELECT*FROM TAB_IDENTITY;
  INSERT INTO TAB_IDENTITY (DESCRITOR)VALUES('CLIENTE '),
 ('CLIENTE ');
 SELECT*FROM TAB_IDENTITY;