SELECT
    IdCliente,
    QtdePontos,
    QtdePontos + 10 AS QtdPontosPlus10,
    DtCriacao,
    date(substr(DtCriacao, 1, 10)) AS date_function,
    datetime(substr(DtCriacao, 1, 19)) AS date_function_hour,
    strftime('%w', (datetime(substr(DtCriacao, 1, 19)))) AS day_of_week
    -- transformando a data para o formato YYYY-MM-DD
FROM
    clientes