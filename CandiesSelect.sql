--Seleção de clientes do estado de SP 
SELECT 
    Codigo,
    Nome,
    CPF,
    Estado
FROM 
    Cliente
WHERE
    Estado = 'SP'

--Compra que a Candies possuí que gastou menos 
SELECT 
    MIN(Valor) As MenorCompra
FROM
    Pedido_Compra

--Venda mais alta da Candies
SELECT
    MAX(Valor) As Venda_Mais_Alta
FROM
    Pedido_Venda

--Plano de fidelidade mais antigo
SELECT
    MIN(Data_Adesao) As [Data_Adesão]
FROM 
    Fidelidade

--Maior venda realizada no mês de fevereiro 
SELECT
    MAX(Valor) As MaiorVenda
FROM
    Pedido_Venda
WHERE
    MONTH(Data) = 2

--Quantidade de clientes que a candies possí
SELECT
    COUNT(*) As Qtd_Clientes
FROM
    Cliente

--Vendas com valores maiores que R$1000
SELECT
    COUNT(*) As [Vendas>1000]
FROM 
    Pedido_Compra
WHERE 
    Valor > 1000

--Quantidade de doçes que a candies comprou
SELECT
    SUM(Quantidade) As Qtd_Doces
FROM
    Item_Pedido_Compra

--Valor total de impostos de vendas da candies 
SELECT
    SUM(Valor_Imposto) As Imposto_Total
FROM
    Pedido_Venda

--Média de gastos de compra da candies
SELECT
    AVG(Valor) As [Média_Compras]
FROM
    Pedido_Compra

--Média dos pontos de fidelidade distribuidos até o momento
SELECT
    AVG(Pontos) As [Média_Pontos]
FROM
    Fidelidade

--Valor das vendas sem imposto
SELECT
    Valor,
    Valor - Valor_Imposto As Valor_Sem_Imposto
FROM
    Pedido_Venda

--Quantidade de pontos de fidelidade se todos os clientes comprassem metade
SELECT
    Pontos / 2 As Metade_Dos_Pontos,
    Pontos As Pontos_Original,
    Pontos * 2 As Pontos_Duplicados
FROM
    Fidelidade