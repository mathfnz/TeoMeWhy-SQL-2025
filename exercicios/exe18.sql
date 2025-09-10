-- qual o valor medio de pontos positivos por dia
SELECT
    SUM(QtdePontos) as total_pontos
    ,COUNT(DISTINCT SUBSTR(DtCriacao, 1, 10)) AS qtd_dias_unicos
    ,SUM(QtdePontos) / COUNT(DISTINCT SUBSTR(DtCriacao, 1, 10)) AS avg_pontos_dias
FROM
    transacoes
WHERE
    QtdePontos > 0
