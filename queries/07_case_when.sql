
/* 
de 0 a 500 Ponei
de 501 a 1000 Ponei Premium
de 1001 a 5000 Mago Aprendiz
de 5001 a 10000 Mago mestre
10001 Mago supremo
 */
SELECT
    IdCliente,
    QtdePontos,
    CASE
        WHEN QtdePontos BETWEEN 0 AND 500 THEN 'Ponei'
        WHEN QtdePontos BETWEEN 501 AND 1000 THEN 'Ponei Premium'
        WHEN QtdePontos BETWEEN 1001 AND 5000 THEN 'Mago Aprendiz'
        WHEN QtdePontos BETWEEN 5001 AND 10000 THEN 'Mago mestre'
        ELSE  'Mago supremo' 
     END AS "nível"
FROM
    clientes
ORDER BY
    QtdePontos DESC