'/Uma loja tem um banco de dados que contém todo o controle de vendas de produtos e de cadastro de clientes. 
Pensando nisso, crie uma função para somar todos os clientes que foram cadastrados na loja durante um dia./'

--BANCO DE DADOS II


--Função para soma de clientes


CREATE OR REPLACE FUNCTION contarClientesNoDia(data_alvo date)
RETURNS integer AS $$
DECLARE
    total_clientes integer;
BEGIN
    SELECT COUNT(*) INTO total_clientes
    FROM clientes
    WHERE date(data_cadastro) = data_alvo;

    RETURN total_clientes;
    
    
SELECT contarClientesNoDia('2023-10-29');

END;
$$ LANGUAGE plpgsql;


--Tabela para exemplo:

CREATE TABLE clientes (
    id serial PRIMARY KEY,
    nome VARCHAR(100),
    data_cadastro DATE
);

--Dados Tabela para exemplo:

INSERT INTO clientes (nome, data_cadastro) VALUES
    ('Cliente 1', '2023-10-29'),
    ('Cliente 2', '2023-10-29'),
    ('Cliente 3', '2023-10-30'),
    ('Cliente 4', '2023-10-30');
    ('Cliente 5', '2023-10-30'),
    ('Cliente 6', '2023-10-31'),
    ('Cliente 7', '2023-10-31'),
    ('Cliente 8', '2023-11-01');
    
    
'/Exemplos de Consultas com a soma dos clientes em duas datas distintas:/'

--Número de clientes cadastrados em 2023-10-30
SELECT contarClientesNoDia('2023-10-30');

-- Contar o número de clientes cadastrados em 2023-10-31
SELECT contarClientesNoDia('2023-10-31');
