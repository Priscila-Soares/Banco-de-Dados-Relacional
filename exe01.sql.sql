-- Passo 1: Criar o Banco de Dados
CREATE DATABASE RH_Empresa;

-- Usar o Banco de Dados
USE RH_Empresa;

-- Passo 2: Criar a Tabela de Colaboradores
CREATE TABLE colaboradores (
    id_colaborador INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(50),
    salario DECIMAL(10, 2),
    data_admissao DATE
);

-- Passo 3: Inserir Dados na Tabela
INSERT INTO colaboradores (nome, cargo, salario, data_admissao)
VALUES
    ('Ryomen Sukuna', 'Analista de TI', 3000.00, '2022-01-15'),
    ('Rob Lucci', 'Assistente Administrativo', 1500.00, '2021-08-03'),
    ('Sousuke Aizen', 'Gerente de Projetos', 5000.00, '2019-06-20'),
    ('Madara Uchiha', 'Coordenadora de RH', 2500.00, '2020-11-10'),
    ('Zeref Dragneel', 'Desenvolvedor', 1800.00, '2023-05-01');

-- Passo 4: Selecionar Colaboradores com Salário Maior que 2000
SELECT * FROM colaboradores
WHERE salario > 2000;

-- Passo 5: Selecionar Colaboradores com Salário Menor que 2000
SELECT * FROM colaboradores
WHERE salario < 2000;

-- Passo 6: Atualizar Salário de um Colaborador
UPDATE colaboradores
SET salario = 2000
WHERE id_colaborador = 2;
