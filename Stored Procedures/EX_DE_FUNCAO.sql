CREATE DEFINER=`root`@`localhost` FUNCTION `f_acha_tipo_sabor`(vsabor VARCHAR(50)) RETURNS varchar(50) CHARSET utf8mb4
BEGIN
DECLARE vretorno VARCHAR(50) DEFAULT '';
CASE vsabor
WHEN 'Uva' THEN SET vretorno= 'Carnoso';
WHEN 'Lima/Limão' THEN SET vretorno = 'Citrico';
WHEN 'Cereja/Maça' THEN SET vretorno = 'Drupa';
WHEN 'Melância' THEN SET vretorno = 'Carnoso';
WHEN 'Açai' THEN SET vretorno = 'Carnoso';
WHEN 'Laranja' THEN SET vretorno = 'Citrico';
WHEN 'Jaca' THEN SET vretorno = 'Carnoso';
WHEN 'Manga' THEN SET vretorno = 'Carnoso';
WHEN 'Morango/Limão' THEN SET vretorno = 'Carnoso/Citrico';
WHEN 'Maça' THEN SET vretorno = 'Carnoso';
WHEN 'Maracujá' THEN SET vretorno = 'Citrico';
WHEN 'Cereja' THEN SET vretorno = 'Carnoso';
WHEN 'Morango' THEN SET vretorno = 'Carnoso';
ELSE SET vretorno = 'Não Consta';
END CASE;
RETURN vretorno;
END