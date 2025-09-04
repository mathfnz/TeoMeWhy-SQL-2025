-- selecione produtos que contem chrun no nome
SELECT
    *
FROM
    produtos
WHERE
    DescProduto LIKE '%churn%'
-- or DescCateogriaProduto = 'churn_model'