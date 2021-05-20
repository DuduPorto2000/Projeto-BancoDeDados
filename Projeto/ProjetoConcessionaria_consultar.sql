SELECT nome FROM Cliente
ORDER BY nome

SELECT SUM(salario) FROM Gerente

SELECT AVG(salario) FROM Vendedor

SELECT COUNT(carro) FROM Pedido

SELECT MIN(salario) FROM Gerente

SELECT MAX(salario) FROM Vendedor

SELECT statuspedi AS [Status], cpf AS [Cliente], valor AS [Valor] FROM Pedido
WHERE NOT statuspedi = 'concluido'
ORDER BY valor

SELECT * FROM Cliente
WHERE rua IS NULL

SELECT AVG(salario) AS [Média], cidade, COUNT(nome) AS [Número de Funcionários] FROM Gerente
GROUP BY cidade

SELECT salario FROM Vendedor
WHERE salario BETWEEN 1000 AND 1600

SELECT Gerente.nome AS [Gerentes], Gerente.cidade AS [Cidade], Vendedor.nome AS [Vendedores], Vendedor.cidade AS [Cidade] 
FROM Gerente INNER JOIN Vendedor ON Gerente.cidade = Vendedor.cidade

SELECT cidade FROM Cliente
WHERE  cidade NOT LIKE '[João]%'

SELECT year(datapedi) AS [Ano], carro AS [Carro] FROM Pedido
GROUP BY datapedi, carro
HAVING count(pedido) > 0

SELECT * FROM Fornecedor
WHERE cidade IN('João Pessoa')

