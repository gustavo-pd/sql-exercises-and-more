-- JOIN --
-- Utilizado para juntar dados relacionados em um banco de dados

-- INNER JOIN
-- Utilizado para combinar dados de duas ou mais tabelas
SELECT t1.coluna, t2.coluna
	FROM tabela1 AS t1
	INNER JOIN tabela2 AS t2
ON t1.coluna_em_comum = t2.coluna_em_comum;

SELECT * FROM sakila.city;
SELECT * FROM sakila.country;
SELECT city.city, city.country_id, country.country
	FROM sakila.city AS city
    INNER JOIN sakila.country AS country
ON city.country_id = country.country_id;

SELECT a.first_name, a.actor_id, f.actor_id
FROM sakila.actor AS a
INNER JOIN film_actor AS f
ON a.actor_id = f.actor_id;

SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    a.actor_id,
    a.first_name,
    a.last_name
FROM customer AS c
INNER JOIN actor AS a
ON c.last_name = a.last_name
ORDER BY c.last_name;


-- LEFT JOIN - utiliza como referência a tabela da esquerda, assim, mostrando todos os valores da tabela da esquerda e também,
-- da parte da tabela da direita é mostrado que existe na tabela da esquerda e existe na tabela da direita,
-- o que não existe ele retorna NULL.
SELECT c.customer_id, c.first_name, a.actor_id
FROM sakila.customer AS c          -- nesse caso as colunas 'customer' e 'firstname'
LEFT JOIN sakila.actor AS a        -- vieram completamente preenchidas, a 'actor' parcialmente
ON c.last_name = a.last_name; 

SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    a.actor_id,
    a.first_name,
    a.last_name
FROM customer AS c
LEFT JOIN actor AS a
ON c.last_name = a.last_name
ORDER BY c.last_name;


-- RIGHT JOIN - mesma coisa que o LEFT JOIN, só que leva como referência a tabela da direita.
SELECT c.customer_id, c.first_name, a.actor_id
FROM sakila.customer AS c         -- nesse caso as colunas 'customer' e 'firstname'
RIGHT JOIN sakila.actor AS a      -- vieram parcialmente preenchidas, a 'actor' totalmente
ON c.last_name = a.last_name; 

SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    a.actor_id,
    a.first_name,
    a.last_name
FROM customer AS c
RIGHT JOIN actor AS a
ON c.last_name = a.last_name
ORDER BY c.last_name;


-- SELF JOIN
-- Utilizado para fazer join de uma tabela com ela própria
-- Quando você precisa filtrar ou comparar para encontrar algo estiver em uma única tabela

-- Utilizando o schema hr como exemplo, se quisermos buscar o nome das pessoas colaboradoras e
-- das respectivas gerências ( manager ), podemos montar a seguinte query usando SELF JOIN :
SELECT
    CONCAT(Employee.FIRST_NAME, " ", Employee.LAST_NAME) AS "Nome da Pessoa Colaboradora",
    CONCAT(Manager.FIRST_NAME, " ", Manager.LAST_NAME) AS "Nome Gerente"
FROM
    employees AS Employee
INNER JOIN
    employees AS Manager ON Employee.MANAGER_ID = Manager.EMPLOYEE_ID;

-- Queremos saber o Nome das pessoas colaboradoras e suas respectivas gerências ( manager )
-- cujos departamentos ( department ) são diferentes.    
SELECT
    CONCAT(Employee.FIRST_NAME, " ", Employee.LAST_NAME) AS "Nome Pessoa Colaboradora",
    CONCAT(Manager.FIRST_NAME, " ", Manager.LAST_NAME) AS "Nome Gerente"
FROM
    employees AS Employee
INNER JOIN
    employees AS Manager ON Employee.MANAGER_ID = Manager.EMPLOYEE_ID
WHERE
    Employee.DEPARTMENT_ID <> Manager.DEPARTMENT_ID;

-- Exiba o Nome e a quantidade de pessoas lideradas de cada gerente.    
SELECT
    CONCAT(Manager.FIRST_NAME, " ", Manager.LAST_NAME) AS "Nome Gerente",
    COUNT(*)
FROM
    employees AS Manager
INNER JOIN
    employees AS Employee ON Employee.MANAGER_ID = Manager.EMPLOYEE_ID
GROUP BY
    Manager.EMPLOYEE_ID;
