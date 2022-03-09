SELECT T.name AS cancao,
  COUNT(H.track_id)AS reproducoes
FROM SpotifyClone.tracks AS T
JOIN SpotifyClone.user_historic AS H
	ON T.track_id = H.track_id
GROUP BY T.name
	ORDER BY reproducoes DESC,
	cancao ASC 
LIMIT 2;