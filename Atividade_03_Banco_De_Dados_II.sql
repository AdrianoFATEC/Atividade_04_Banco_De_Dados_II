--BANCO DE DADOS II

'/Uma empresa de vendas tem um banco de dados com informações sobre os seus produtos. Ela precisa criar um relatório que faça um levantamento diário da quantidade de produtos comprados por dia. Para ajudar a empresa, crie um procedure para agilizar esse processo./'


--Procedure



-- Procedure
CREATE OR REPLACE FUNCTION RelatorioQuantidadeProdutosCompradosDiariamente()
RETURNS TABLE(dia date, quantidade_comprada bigint) AS
$$
BEGIN
    RETURN QUERY
    SELECT
        data_compra::date AS dia,
        COUNT(*) AS quantidade_comprada
    FROM
        compras 
    WHERE
        data_compra::date = current_date
    GROUP BY
        data_compra::date;
END;
$$ LANGUAGE plpgsql;

-- Como utilizar o procedure
SELECT * FROM RelatorioQuantidadeProdutosCompradosDiariamente();
