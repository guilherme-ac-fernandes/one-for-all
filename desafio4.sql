SELECT 
  u.usuario AS "usuario", 
  IF(YEAR(MAX(data_de_reproducao)) > 2020 ,
  'Usuário ativo',
  'Usuário inativo') 
  AS "condicao_usuario" 
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.reproducao AS rep 
  ON u.usuario_id = rep.usuario_id
GROUP BY u.usuario
ORDER BY u.usuario;