-- todas as transacoes adicionando uma nova coluna com alfo, medio e baixo para o valor dos pontos

SELECT
    IdCliente,
    QtdePontos,
    CASE
        WHEN QtdePontos >= 10 THEN 'Baixo'
        WHEN QtdePontos >= 11 AND QtdePontos < 500 THEN 'Médio'
        ELSE 'Alto'
    END AS 'nivel_pontuacao'
FROM
    transacoes