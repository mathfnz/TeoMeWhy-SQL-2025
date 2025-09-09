-- organizar clientes com mais saldo de pontos
SELECT
    *
FROM
    clientes
ORDER BY  QtdePontos DESC
LIMIT 10;

SELECT 
    *
    ,datetime(substr(DtCriacao, 1, 19)) AS date_function_hour
FROM
    clientes
WHERE
    FlTwitch = 1
ORDER BY 
    datetime(substr(DtCriacao, 1, 19)), QtdePontos DESC
