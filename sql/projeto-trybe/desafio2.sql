SELECT 
	COUNT(DISTINCT TRA.track_id) AS cancoes,
	COUNT(DISTINCT ART.artist_id) AS artistas,
	COUNT(DISTINCT ALB.album_id) AS albuns
FROM SpotifyClone.tracks AS TRA
	INNER JOIN SpotifyClone.artists AS ART
	INNER JOIN SpotifyClone.albuns AS ALB;