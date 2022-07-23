SELECT 
  u.usuario  AS "usuario", 
  COUNT(*) AS "qtde_musicas_ouvidas", 
  ROUND(SUM(duracao_segundos)/60, 2) AS "total_minutos" 
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.reproducao AS rep 
  ON u.usuario_id = rep.usuario_id
INNER JOIN SpotifyClone.musicas AS m 
  ON m.musica_id = rep.musica_id
GROUP BY u.usuario
ORDER BY u.usuario;