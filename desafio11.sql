SELECT 
  titulo AS "nome_musica", 
  CASE 
      WHEN titulo LIKE '%Streets' THEN REPLACE(titulo, 'Streets', 'Code Review')
      WHEN titulo LIKE '%Her Own' THEN REPLACE(titulo, 'Her Own', 'Trybe')
      WHEN titulo LIKE '%Inner Fire' THEN REPLACE(titulo, 'Inner Fire', 'Project')
      WHEN titulo LIKE '%Silly' THEN REPLACE(titulo, 'Silly', 'Nice')
      WHEN titulo LIKE '%Circus' THEN REPLACE(titulo, 'Circus', 'Pull Request')
      ELSE 'erro'
  END AS "novo_nome"
FROM SpotifyClone.musicas
WHERE 
  titulo LIKE '%Streets' OR 
  titulo LIKE '%Her Own' OR
  titulo LIKE '%Inner Fire' OR
  titulo LIKE '%Silly' OR
  titulo LIKE '%Circus'
ORDER BY titulo;