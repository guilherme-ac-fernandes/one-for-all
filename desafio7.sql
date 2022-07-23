SELECT 
  ar.artista AS "artista",
  al.album AS "album",
  COUNT(*) AS "seguidores"
FROM SpotifyClone.artistas AS ar
INNER JOIN  SpotifyClone.albuns AS al 
  ON ar.artista_id = al.artista_id
INNER JOIN SpotifyClone.seguindo_artista AS seg 
  ON seg.artista_id = ar.artista_id
GROUP BY al.album, seg.artista_id
ORDER BY COUNT(*) DESC, ar.artista, al.album;