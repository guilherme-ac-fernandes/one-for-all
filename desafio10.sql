SELECT 
  m.titulo AS "nome",
  COUNT(*) AS "reproducoes"
FROM SpotifyClone.reproducao AS rep
INNER JOIN SpotifyClone.usuario AS ur 
  ON rep.usuario_id = ur.usuario_id
INNER JOIN SpotifyClone.musicas AS m 
  ON m.musica_id = rep.musica_id
WHERE plano_id IN (1, 4)
GROUP BY m.titulo
ORDER BY COUNT(*) DESC, m.titulo;