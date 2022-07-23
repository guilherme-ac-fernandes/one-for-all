SELECT 
  m.titulo AS "cancao",
  COUNT(*) AS "reproducoes" 
FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.reproducao AS rep ON m.musica_id = rep.musica_id
GROUP BY m.titulo
ORDER BY COUNT(*) DESC, m.titulo
LIMIT 2;