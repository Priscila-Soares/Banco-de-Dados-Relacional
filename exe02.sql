-- Passo 1: Criar o Banco de Dados
CREATE DATABASE Ecommerce;

-- Usar o Banco de Dados
USE Ecommerce;

-- Passo 2: Criar a Tabela de Produtos
CREATE TABLE produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    preco DECIMAL(10, 2),
    estoque INT
);

-- Passo 3: Inserir Dados na Tabela
INSERT INTO produtos (nome, categoria, preco, estoque)
VALUES
    ('Notebook', 'Eletrônicos', 3500.00, 15),
    ('Smartphone', 'Eletrônicos', 2200.00, 30),
    ('Cômoda 6 Gavetas', 'Móveis', 800.00, 10),
    ('Fone de Ouvido Bluetooth', 'Acessórios', 250.00, 50),
    ('Mouse Gamer', 'Acessórios', 120.00, 80),
    ('TV LED 50"', 'Eletrônicos', 3000.00, 20),
    ('Sofá de 3 Lugares', 'Móveis', 1500.00, 5),
    ('Geladeira Frost Free', 'Eletrodomésticos', 2200.00, 8);

-- Passo 4: Selecionar Produtos com Preço Maior que 500
SELECT * FROM produtos
WHERE preco > 500;

-- Passo 5: Selecionar Produtos com Preço Menor que 500
SELECT * FROM produtos
WHERE preco < 500;

-- Passo 6: Atualizar Preço de um Produto
UPDATE produtos
SET preco = 300
WHERE id_produto = 4;
