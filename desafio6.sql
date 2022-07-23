SELECT 
  ROUND(MIN(p.plano_valor), 2) AS "faturamento_minimo",
  ROUND(MAX(p.plano_valor), 2) AS "faturamento_maximo",
  ROUND(AVG(plano_valor), 2) AS "faturamento_medio",
  ROUND(SUM(plano_valor), 2) AS "faturamento_total"
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.planos AS p 
  ON u.plano_id = p.plano_id;