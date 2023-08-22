use ecommerce;

-- Inserção de valores na tabela clientes
INSERT INTO clientes (pNome, nomeMeio, sobrenome, cpf, endereco, dataNascimento) 
VALUES 
    ('Lucas', 'V', 'Araujo', '12345678911', 'rua 1, 1 - bairro 1 - São Paulo/SP', '1990-04-15'),
    ('Diego', 'D', 'Venancio', '12345678912', 'rua 2, 2 - bairro 2 - São Paulo/SP', '1992-06-19'),
    ('Maria', 'O', 'Castro', '12345678913', 'rua 3, 3 - bairro 3 - São Paulo/SP', '1964-12-05'),
    ('Luiz', 'V', 'Araujo', '12345678914', 'rua 4, 4 - bairro 4 - São Paulo/SP', '1968-05-07'),
    ('Alice', 'S', 'Araujo', '12345678915', 'rua 5, 5 - bairro 5 - São Paulo/SP', '2016-09-10'),
    ('Mayara', 'N', 'Silva', '12345678916', 'rua 6, 6 - bairro 6 - São Paulo/SP', '1988-09-09');

-- Inserção de valores na tabela produtos
INSERT INTO produtos (nomeProduto, classificacaoCrianca, categoria, descricao, valor, avaliacao, dimensoes)
VALUES 
    ('Celular', default, 'Eletrônico', 'Aparelho muito bom com 128gb', 1999.99, 6, '12x8x2'),
    ('HotWheels', true, 'Brinquedos', 'Autorama HotWheels', 299.99, 7, null),
    ('Blusa', default, 'Vestimenta', 'Moletom do DeadFish', 99.99, 8, null),
    ('Whey', default, 'Alimentos', '25g de proteína por dose', 89.99, 9, null),
    ('Sofá', default, 'Móveis', 'Reclinável e retrátil', 1989.99, 10, '4x5x3');

-- Inserção de valores na tabela pedidos
INSERT INTO pedidos (idPedidoCliente, statusPedido, descricao, frete, pagamento)
VALUES 
    (1, 'Em andamento', 'Foi entregue na transportadora', 20, default),
    (1, 'Em processando', 'Aguardando o pagamento', 30, default),
    (1, 'Enviado', 'Objeto em trânsito para o cliente', 40, default),
    (1, 'Entregue', 'Objeto entregue para o cliente', 50, default),
    (2, 'Em andamento', 'Foi entregue na transportadora', 20, default),
    (2, 'Em processando', 'Aguardando o pagamento', 30, default),
    (2, 'Enviado', 'Objeto em trânsito para o cliente', 40, default),
    (2, 'Entregue', 'Objeto entregue para o cliente', 50, default),
    (3, 'Em andamento', 'Foi entregue na transportadora', 20, default),
    (3, 'Enviado', 'Objeto em trânsito para o cliente', 40, default),
    (3, 'Entregue', 'Objeto entregue para o cliente', 50, default),
    (4, 'Em processando', 'Aguardando o pagamento', 30, default),
    (4, 'Em andamento', 'Foi entregue na transportadora', 20, default),
    (5, 'Enviado', 'Objeto em trânsito para o cliente', 40, default),
    (6, 'Entregue', 'Objeto entregue para o cliente', 50, default);

-- Inserção de valores na tabela estoquesProdutos
INSERT INTO estoquesProdutos (quantidade, localidade)
VALUES 
    (1, 'Canoas'),
    (2, 'Campinas'),
    (3, 'Deodoro'),
    (4, 'Ouro Preto'),
    (5, 'Trindade');

-- Inserção de valores na tabela fornecedores
INSERT INTO fornecedores (cnpj, razaoSocial, contato)
VALUES 
    ('123456789123460', 'Roupas Elegantes', '11966666666'),
    ('123456789123461', 'Alimentos Naturais', '11977777777');

-- Inserção de valores na tabela vendedores
INSERT INTO vendedores (razaoSocial, cnpj, cpf, localidade, nomeFantasia)
VALUES 
    ('Vende Brinquedos', '123456789123462', '98765432196', 'São Paulo', 'Brinquedos Incríveis'),
    ('Vende Suplementos', '123456789123463', '98765432197', 'Minas Gerais', 'Suplementos Performance'),
    ('Vende Móveis', '123456789123464', '98765432198', 'Bahia', 'Móveis Modernos'),
    ('Vende Eletrônicos', '123456789123465', '98765432199', 'Rio Grande do Sul', 'Eletrônicos Premium'),
    ('Vende Moda', '123456789123466', '98765432190', 'Rio de Janeiro', 'Moda Estilosa');

-- Inserção de valores na tabela produtosVendedores
INSERT INTO produtosVendedores (idProdutoVendedorVendedor, idProdutoVendedorProduto, quantidade)
VALUES 
    (1, 2, 10),
    (2, 4, 7),
    (3, 5, 2),
    (4, 1, 6),
    (5, 3, 10);

-- Inserção de valores na tabela produtosPedidos
INSERT INTO produtosPedidos (idProdutoPedidoProduto, idProdutoPedidoPedido, quantidade, statusPedido)
VALUES 
    (1, 1, 1, default),
    (1, 4, 1, default),
    (2, 5, 1, 'Sem estoque'),
    (3, 10, 1, default),
    (4, 3, 1, 'Sem estoque'),
    (5, 7, 1, default);

-- Inserção de valores na tabela estoquesLocalidades
INSERT INTO estoquesLocalidades (idEstoqueLocalidadeProduto, idEstoqueLocalidadeEstoque, localidade)
VALUES 
    (1, 2, 'São Paulo'),
    (2, 4, 'Minas Gerais'),
    (3, 5, 'Bahia'),
    (4, 1, 'Rio Grande do Sul'),
    (5, 3, 'Rio de Janeiro');

-- Inserção de valores na tabela produtosFornecedores
INSERT INTO produtosFornecedores (idProdutoFornecedorProduto, idProdutoFornecedorFornecedor, quantidade)
VALUES 
    (1, 4, 10),
    (2, 1, 7),
    (3, 5, 2),
    (4, 2, 6),
    (5, 3, 10);

-- Listar todos os fornecedores e seus produtos
SELECT f.razaoSocial, p.nomeProduto
FROM fornecedores f
JOIN produtosFornecedores pf ON f.idFornecedor = pf.idProdutoFornecedorFornecedor
JOIN produtos p ON pf.idProdutoFornecedorProduto = p.idProduto;

-- consultando os valores inseridos na tabela produtosFornecedores             
select * from produtosFornecedores;          

-- Exibir os produtos de categoria 'Eletrônico'
SELECT * FROM produtos WHERE categoria = 'Eletrônico';

-- Exibir os pedidos feitos por um cliente específico
SELECT * FROM pedidos WHERE idPedidoCliente = 1;

-- Exibir produtos ordenados por valor (do mais barato ao mais caro)
SELECT * FROM produtos ORDER BY valor;

-- Exibir pedidos do cliente 1 ordenados por data de entrega
SELECT * FROM pedidos WHERE idPedidoCliente = 1 ORDER BY entregaData;

-- Exibir produtos e suas quantidades nos estoques, filtrando estoques com quantidade maior que 5
SELECT p.nomeProduto, e.localidade, ep.quantidade
FROM produtos p
JOIN estoquesLocalidades el ON p.idProduto = el.idEstoqueLocalidadeProduto
JOIN estoquesProdutos ep ON el.idEstoqueLocalidadeEstoque = ep.idEstoqueProduto
JOIN estoquesProdutos e ON el.idEstoqueLocalidadeEstoque = e.idEstoqueProduto
HAVING ep.quantidade > 5;
          
                    