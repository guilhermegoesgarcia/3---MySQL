SELECT * FROM CLIENTE;
CALL looping_cursor_multiplas_colunas;

SELECT DISTINCT SABOR  FROM PRODUTOS;

/*FUNÇOES*/
/*para habilitar escrever funçoes*/
SET GLOBAL log_bin_trust_function_creators = 1;
SELECT f_acha_tipo_sabor('ERRO');
SELECT * FROM produtos;
SELECT DESCRITOR ,SABOR, f_acha_tipo_sabor(SABOR) AS TIPO_DO_SABOR FROM PRODUTOS;