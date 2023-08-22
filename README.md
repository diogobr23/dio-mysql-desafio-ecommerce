# dio-mysql-desafio-ecommerce

# Projeto E-commerce MySQL

Este é um projeto de exemplo de modelagem de banco de dados para um sistema de e-commerce usando MySQL. O projeto inclui a criação de tabelas para clientes, pedidos, produtos, fornecedores, estoque e suas relações.

## Estrutura do Banco de Dados

O banco de dados é composto pelas seguintes tabelas:

- **Cliente**: Armazena informações sobre os clientes que fazem pedidos.
- **Pedido**: Armazena informações sobre os pedidos feitos pelos clientes.
- **Produto**: Contém detalhes sobre os produtos disponíveis na loja.
- **Fornecedor**: Registra os fornecedores dos produtos.
- **ProdutoFornecedor**: Estabelece a relação entre produtos e fornecedores.
- **Estoque**: Armazena informações sobre os locais de estoque.
- **ProdutoEstoque**: Associa produtos a locais de estoque.
- **ProdutoPedido**: Relaciona produtos e pedidos, registrando a quantidade em cada pedido.

## Utilização

O código SQL para criar as tabelas e relações pode ser encontrado em (./ecommerce.sql). Você pode copiar e executar esse código no MySQL para criar o esquema do banco de dados.

Além disso, você também pode conferir a visualização do diagrama das tabelas em (./ecommerce_diagrama.png).

## Contribuições

Este é um projeto de exemplo, mas sugestões de melhorias são bem-vindas! Sinta-se à vontade para abrir uma "issue" ou enviar um "pull request" se você tiver alguma ideia ou correção a fazer.
