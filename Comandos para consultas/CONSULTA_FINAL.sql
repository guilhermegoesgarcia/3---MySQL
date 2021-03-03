SELECT * FROM itens_notas_fiscais;
SELECT * FROM notas_fiscais;

/* CONSULTA COM VENDAS DE CLIENTES POR MES */
SELECT NF.CPF, DATE_FORMAT(NF.DATA_VENDA,'%Y-%m')
AS MES_ANO, SUM(INF.QUANTIDADE) AS QUANTIDADE_VENDAS
FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF
ON NF.NUMERO = INF.NUMERO
GROUP BY NF.CPF, DATE_FORMAT(NF.DATA_VENDA,'%Y-%m');


/* LIMITE DE COMPRA POR CLIENTE */
SELECT TC.CPF, TC.NOME, TC.VOLUME_DE_COMPRA AS QUANTIDADE_LIMITE 
FROM tabela_de_clientes TC;


SELECT NF.CPF, TC.NOME, DATE_FORMAT(NF.DATA_VENDA,'%Y-%m')
AS MES_ANO, SUM(INF.QUANTIDADE) AS QUANTIDADE_VENDAS,
MAX(TC.VOLUME_DE_COMPRA) AS QUANTIDADE_LIMITE
FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF
ON NF.NUMERO = INF.NUMERO
INNER JOIN tabela_de_clientes TC
ON TC.CPF = NF.CPF
GROUP BY NF.CPF,TC.NOME, DATE_FORMAT(NF.DATA_VENDA,'%Y-%m');


/*CONSULTA FINAL*/
SELECT X.CPF, X.NOME, X.MES_ANO, X.QUANTIDADE_VENDAS, X.QUANTIDADE_LIMITE,

CASE WHEN (X.QUANTIDADE_LIMITE - X.QUANTIDADE_VENDAS) < 0 THEN 'INVÁLIDA'
ELSE 'VÁLIDA' END AS STATUS_VENDA
FROM (
SELECT NF.CPF, TC.NOME, DATE_FORMAT(NF.DATA_VENDA,'%Y-%m')
AS MES_ANO, SUM(INF.QUANTIDADE) AS QUANTIDADE_VENDAS,
MAX(TC.VOLUME_DE_COMPRA) AS QUANTIDADE_LIMITE
FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF
ON NF.NUMERO = INF.NUMERO
INNER JOIN tabela_de_clientes TC
ON TC.CPF = NF.CPF
GROUP BY NF.CPF,TC.NOME, DATE_FORMAT(NF.DATA_VENDA,'%Y-%m')) X;

