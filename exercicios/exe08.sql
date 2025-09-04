-- Lista de clientes entre 100 a 200 pontos
SELECT
    IdCliente
    ,QtdePontos
FROM
    clientes
WHERE
    QtdePontos BETWEEN 100 and 200