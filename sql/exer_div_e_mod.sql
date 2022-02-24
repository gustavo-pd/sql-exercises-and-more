-- 1
SELECT IF (15 MOD 2 = 0, 'par', 'ímpar') AS 'par ou ímpar?';

-- 2
SELECT 220 DIV 12;

-- 3
SELECT IF (220 MOD 12 = 0, 'NÃO', CONCAT('SIM, ', 220 MOD 12)) AS 'TEM LUGARES SOBRANDO';