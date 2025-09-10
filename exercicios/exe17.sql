-- quantos produtos sao de rpg
-- SELECT
--     *
-- FROM
--     produtos
-- WHERE
--     DescCateogriaProduto = 'rpg'

SELECT
    DescCateogriaProduto
    ,COUNT(*)
FROM
    produtos
GROUP BY
    DescCateogriaProduto