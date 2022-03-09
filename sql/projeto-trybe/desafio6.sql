SELECT
	CONCAT(CONVERT(MIN(S.plan_value), CHAR), '.00') AS `faturamento_minimo`,
    CONVERT(MAX(S.plan_value), CHAR) AS `faturamento_maximo`,
    CONVERT(ROUND(SUM(S.plan_value), 2), CHAR) AS `faturamento_total`,
	CONVERT(ROUND(AVG(S.plan_value), 2), CHAR) AS `faturamento_medio`
FROM
	SpotifyClone.users AS U
JOIN SpotifyClone.subscriptions AS S
	ON S.plan_id = U.plan_id;