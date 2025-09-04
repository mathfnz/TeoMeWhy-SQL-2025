-- Lista de produtos com nome que começa com 'venda de'

SELECT
    *
FROM
    produtos
WHERE
    DescProduto like 'Venda de%'