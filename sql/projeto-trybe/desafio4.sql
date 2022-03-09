SELECT 
	first_name AS usuario,
IF(YEAR(MAX(playback_date)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
	FROM SpotifyClone.users AS U
JOIN SpotifyClone.user_historic AS H
	ON U.user_id = H.user_id  
GROUP BY usuario
ORDER BY usuario;