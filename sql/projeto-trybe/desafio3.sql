SELECT 
  U.first_name AS usuario,
  COUNT(H.track_id) AS qtde_musicas_ouvidas,
  ROUND(SUM(T.length)/60, 2) AS total_minutos
	FROM SpotifyClone.users AS U
INNER JOIN SpotifyClone.user_historic AS H 
    ON H.user_id = U.user_id
INNER JOIN SpotifyClone.tracks AS T 
    ON H.track_id = T.track_id
GROUP BY usuario
ORDER BY usuario;