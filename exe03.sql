-- Passo 1: Criar o Banco de Dados
CREATE DATABASE Escola;

-- Usar o Banco de Dados
USE Escola;

-- Passo 2: Criar a Tabela de Estudantes
CREATE TABLE estudantes (
    id_estudante INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    curso VARCHAR(50),
    nota DECIMAL(3, 1),
    data_matricula DATE
);

-- Passo 3: Inserir Dados na Tabela
INSERT INTO estudantes (nome, curso, nota, data_matricula)
VALUES
    ('Kinji Hakari', 'Matemática', 8.5, '2022-03-01'),
    ('Kirara Hoshi', 'Física', 9.2, '2021-08-15'),
    ('Maki Zenin', 'Química', 7.0, '2023-01-10'),
    ('Toge Inumaki', 'Biologia', 6.5, '2022-11-20'),
    ('Yuta Okkotsu', 'Matemática', 7.8, '2021-05-05'),
    ('Megumi Fushiguro', 'Física', 5.4, '2023-04-17'),
    ('Nobara Kugisaki', 'Química', 9.0, '2022-07-12'),
    ('Yuji Itadori', 'Biologia', 8.0, '2022-02-28');

-- Passo 4: Selecionar Estudantes com Nota Maior que 7.0
SELECT * FROM estudantes
WHERE nota > 7.0;

-- Passo 5: Selecionar Estudantes com Nota Menor que 7.0
SELECT * FROM estudantes
WHERE nota < 7.0;

-- Passo 6: Atualizar Nota de um Estudante
UPDATE estudantes
SET nota = 7.5
WHERE id_estudante = 4;
