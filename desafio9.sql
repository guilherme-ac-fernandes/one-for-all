SELECT COUNT(*) AS "quantidade_musicas_no_historico"
FROM SpotifyClone.reproducao AS rep
INNER JOIN SpotifyClone.usuario as ur ON rep.usuario_id = ur.usuario_id
WHERE ur.usuario = "Bill";