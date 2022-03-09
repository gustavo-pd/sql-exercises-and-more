SELECT
	ART.name AS artista,
	ALB.name AS album,
    COUNT(FAV.user_id) AS seguidores
FROM SpotifyClone.artists AS ART
JOIN SpotifyClone.favorite_artists AS FAV
	ON ART.artist_id = FAV.artist_id
JOIN SpotifyClone.albuns AS ALB
	ON ART.artist_id = ALB.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC,
	artista, album;