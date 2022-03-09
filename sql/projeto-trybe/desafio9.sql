SELECT
	COUNT(U.user_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.user_historic AS H
JOIN SpotifyClone.users AS U
	ON H.user_id = U.user_id
WHERE first_name = 'Bill';