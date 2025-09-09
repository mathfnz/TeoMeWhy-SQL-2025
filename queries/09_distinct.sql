SELECT
    DISTINCT FlEmail, FlTwitch
FROM
    clientes;


SELECT
    count(*)
    ,count(DISTINCT IdTransacao) as contador_de_transacoes
    ,count(DISTINCT IdCliente) as contador_de_clientes_no_mes
FROM
    transacoes
WHERE 
    DtCriacao >= '2025-07-01' AND DtCriacao < '2025-08-01'
ORDER BY
    DtCriacao DESC