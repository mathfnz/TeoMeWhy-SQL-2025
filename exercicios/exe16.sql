-- qual cliente fez mais transacoes em 2024
SELECT 
    IdCliente
    ,COUNT(*) AS Transacoes
FROM
    transacoes
WHERE
    DtCriacao >= '2024-01-01' AND
    DtCriacao < '2025-01-01'
GROUP BY
    IdCliente
ORDER BY
    COUNT(*) DESC
LIMIT
    1
