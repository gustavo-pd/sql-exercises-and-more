SELECT
s.name AS `nome`, COUNT(*) AS `reproducoes`
FROM
SpotifyClone.user_historic AS h
JOIN
SpotifyClone.tracks AS s ON s.track_id = h.track_id
JOIN
SpotifyClone.users AS u ON u.user_id = h.user_id
WHERE
u.plan_id IN (1,4)
GROUP BY `nome`
ORDER BY `nome`;