SELECT * FROM vendedores;
SELECT * FROM sucos_vendas.tabela_de_vendedores;
/*VISUALIZANDO AS 2 TABELAS JUNTAS*/
SELECT * FROM VENDEDORES A 
INNER JOIN sucos_vendas.tabela_de_vendedores B
ON A.MATRICULA = substring(B.MATRICULA,3,3);

/* SINCRONIZANDO AS INFORMAÇOES FERIAS */
UPDATE vendedores A 
INNER JOIN sucos_vendas.tabela_de_vendedores B
ON A.MATRICULA = substring(B.MATRICULA,3,3)
SET A.FERIAS=B.DE_FERIAS;