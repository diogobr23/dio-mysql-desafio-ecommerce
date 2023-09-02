# Projeto de E-Commerce

Este é um projeto de E-Commerce (comércio eletrônico) que foi desenvolvido usando MySQL como sistema de gerenciamento de banco de dados. O projeto inclui a estrutura do banco de dados, inserção de dados de exemplo e consultas SQL para demonstrar algumas funcionalidades.

## Estrutura do Banco de Dados

O banco de dados deste projeto é composto pelas seguintes tabelas:

1. `clientes`: Armazena informações sobre os clientes, como nome, CPF, endereço e data de nascimento.

2. `produtos`: Contém detalhes dos produtos disponíveis, como nome, categoria, preço e descrição.

3. `pedidos`: Registra informações sobre os pedidos, incluindo o cliente, status, descrição, frete e pagamento.

4. `estoquesProdutos`: Gerencia o estoque de produtos, incluindo quantidade e localização.

5. `fornecedores`: Armazena detalhes dos fornecedores de produtos, como CNPJ, razão social e contato.

6. `vendedores`: Registra informações sobre vendedores terceirizados, como CNPJ, CPF, localização e nome fantasia.

7. `produtosVendedores`: Relaciona produtos a vendedores, incluindo a quantidade disponível.

8. `produtosPedidos`: Relaciona produtos a pedidos, registrando a quantidade e status do pedido.

9. `estoquesLocalidades`: Relaciona produtos a locais de estoque.

10. `produtosFornecedores`: Relaciona produtos a fornecedores, registrando a quantidade fornecida.

## Funcionalidades

Este projeto de E-Commerce oferece as seguintes funcionalidades básicas:

- Cadastro e gerenciamento de clientes.
- Cadastro e gerenciamento de produtos.
- Realização e acompanhamento de pedidos.
- Gerenciamento de estoque.
- Cadastro de fornecedores e vendedores terceirizados.
- Relações entre produtos, vendedores, fornecedores e pedidos.

## Consultas SQL de Exemplo

Aqui estão algumas consultas SQL de exemplo que podem ser usadas para recuperar informações do banco de dados:

1. **Listar todos os fornecedores e seus produtos**
```sql   
SELECT f.razaoSocial, p.nomeProduto
FROM fornecedores f
JOIN produtosFornecedores pf ON f.idFornecedor = pf.idProdutoFornecedorFornecedor
JOIN produtos p ON pf.idProdutoFornecedorProduto = p.idProduto;
```

3. **Consultando os valores inseridos na tabela produtosFornecedores**
```sql            
select * from produtosFornecedores;          
```
5. **Exibir os produtos de categoria 'Eletrônico'**
```sql     
SELECT * FROM produtos WHERE categoria = 'Eletrônico';
```
7. **Exibir os pedidos feitos por um cliente específico**
```sql     
SELECT * FROM pedidos WHERE idPedidoCliente = 1;
```
9. **Exibir produtos ordenados por valor (do mais barato ao mais caro)**
```sql      
SELECT * FROM produtos ORDER BY valor;
```
11. **Exibir pedidos do cliente 1 ordenados por data de entrega**
```sql      
SELECT * FROM pedidos WHERE idPedidoCliente = 1 ORDER BY entregaData;
```
13. **Exibir produtos e suas quantidades nos estoques, filtrando estoques com quantidade maior que 5**
```sql      
SELECT p.nomeProduto, e.localidade, ep.quantidade
FROM produtos p
JOIN estoquesLocalidades el ON p.idProduto = el.idEstoqueLocalidadeProduto
JOIN estoquesProdutos ep ON el.idEstoqueLocalidadeEstoque = ep.idEstoqueProduto
JOIN estoquesProdutos e ON el.idEstoqueLocalidadeEstoque = e.idEstoqueProduto
HAVING ep.quantidade > 5;
```          
                    
