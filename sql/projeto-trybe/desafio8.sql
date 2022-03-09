SELECT
	ALB.name AS album,
	ART.name AS artista
FROM SpotifyClone.artists AS ART
	JOIN SpotifyClone.albuns AS ALB
ON ALB.artist_id = ART.artist_id
	WHERE ART.name LIKE 'Walter Phoenix'
GROUP BY artista, album
ORDER BY album;