-- pedidos realizados no fds
SELECT
    IdTransacao
    ,DtCriacao
    ,strftime('%w', (datetime(substr(DtCriacao, 1, 19)))) AS day_of_week 
FROM
    transacoes
WHERE
    strftime('%w', (datetime(substr(DtCriacao, 1, 19)))) IN ('6', '0')

/*  date(substr(DtCriacao, 1, 10)) AS date_function,
    datetime(substr(DtCriacao, 1, 19)) AS date_function_hour,
    strftime('%w', (datetime(substr(DtCriacao, 1, 19)))) AS day_of_week */