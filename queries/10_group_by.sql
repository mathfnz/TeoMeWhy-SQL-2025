SELECT
    count(*),
    IdProduto
FROM
    transacao_produto
GROUP BY IdProduto


SELECT
    sum(QtdePontos) as pontuacao
    ,IdCliente
    ,count(IdTransacao)
FROM
    transacoes
WHERE DtCriacao >= '2025-07-01' AND DtCriacao < '2025-08-01'
GROUP BY
    IdCliente
ORDER BY sum(QtdePontos) DESC