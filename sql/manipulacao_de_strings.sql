-- Converte o texto da string para CAIXA ALTA
SELECT UCASE('Oi, eu sou uma string');
SELECT UCASE(title) FROM sakila.film LIMIT 10;

-- Converte o texto da string para caixa baixa
SELECT LCASE('Oi, eu sou uma string');
SELECT LCASE(title) FROM sakila.film LIMIT 10;

-- Substitui as ocorrências de uma substring em uma string
SELECT REPLACE('Oi, eu sou uma string', 'string', 'cadeia de caracteres');
SELECT REPLACE(title, 'ACADEMY', 'FOO') FROM sakila.film WHERE film_id = 1;

-- Retorna a parte da esquerda de uma string de acordo com o
-- número de caracteres especificado
SELECT LEFT('Oi, eu sou uma string', 3);
SELECT LEFT(title, 7) FROM sakila.film WHERE film_id = 1;

-- Retorna a parte da direita de uma string de acordo com o
-- número de caracteres especificado
SELECT RIGHT('Oi, eu sou um string', 6);
SELECT RIGHT(title, 8) FROM sakila.film WHERE film_id = 1;

-- Exibe o tamanho, em caracteres, da string, a função LENGTH retorna o tamanho em bytes
SELECT CHAR_LENGTH('Oi, eu sou uma string');
SELECT CHAR_LENGTH(title) FROM sakila.film WHERE film_id = 1;

-- Extrai parte de uma string de acordo com o índice de um caractere inicial
-- e a quantidade de caracteres a extrair
SELECT SUBSTRING('Oi, eu sou uma string', 5, 2);
SELECT SUBSTRING(title, 5, 2) FROM sakila.film WHERE film_id = 1;

-- Se a quantidade de caracteres a extrair não for definida,
-- então a string será extraída do índice inicial definido, até o seu final
SELECT SUBSTRING('Oi, eu sou uma string', 5);
SELECT SUBSTRING(title, 5) FROM sakila.film WHERE film_id = 1;
