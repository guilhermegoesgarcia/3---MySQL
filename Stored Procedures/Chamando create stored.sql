CALL Alo_Mundo;

CALL mostra_numero;
CALL mostra_numero_allies;
CALL sp_com_funcoes;

CALL sp_com_comentario;

CALL alo_mundo2;

CALL exibir_variavel;

CALL tipos_de_dados;

CALL hora_local;

call mesmo_tipo_dados;

CALL atribui_valor;
call sp_ex1;

CALL manipulaco_dados;

select * from tabela_de_produtos;
CALL inclui_novo_produto;

CALL idade_atual;


CALL inclui_novo_produto_parametro ('4000001','Sabor da Serra  1 Litro - Melancia','Melancia','1 Litro','Garrafa',7.50);
SELECT * FROM tabela_de_produtos;

UPDATE TABELA_DE_PRODUTOS
SET SABOR = 'Maracuja'
WHERE CODIGO_DO_PRODUTO = '4000001';

CALL acha_sabor_produto ('4000000');