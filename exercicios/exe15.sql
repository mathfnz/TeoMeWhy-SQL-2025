-- qual cliente juntou mais pontos positivos em 2025-05

SELECT
    IdCliente
    ,SUM(QtdePontos) AS TotalPontos
FROM
    transacoes
WHERE
    (DtCriacao >= '2025-05-01' and DtCriacao < '2025-06-01') AND QtdePontos > 0
GROUP BY IdCliente
ORDER BY SUM(QtdePontos) DESC
LIMIT 1