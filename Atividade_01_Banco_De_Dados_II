--BANCO DE DADOS II

'/Desenvolva um banco de dados e relacione tabelas através de chaves estrangeiras ou nomes de colunas iguais. Siga as instruções:
crie uma base de dados; 
crie tabelas nessa base de dados;
em cada tabela, adicione atributos;
insira dados em cada tabela;
utilize os comandos Joins para realizar consultas nas tabela/'



-- Cria a table alunos

CREATE TABLE alunos (
    aluno_id serial PRIMARY KEY,
    nome varchar(50),
    data_nascimento date
);

-- Cria a Tabela Cursos
CREATE TABLE cursos (
    curso_id serial PRIMARY KEY,
    nome varchar(50),
    descricao text
);

-- Cria a Tabela Notas
CREATE TABLE notas (
    nota_id serial PRIMARY KEY,
    aluno_id int,
    curso_id int,
    nota numeric(3, 2),
    FOREIGN KEY (aluno_id) REFERENCES alunos (aluno_id),
    FOREIGN KEY (curso_id) REFERENCES cursos (curso_id)
);

-- Cria a Tabela Inscricoes
CREATE TABLE inscricoes (
    inscricao_id serial PRIMARY KEY,
    aluno_id int,
    curso_id int,
    data_inscricao date,
    FOREIGN KEY (aluno_id) REFERENCES alunos (aluno_id),
    FOREIGN KEY (curso_id) REFERENCES cursos (curso_id)
);


-- Insere os dados na tabela Alunos
INSERT INTO alunos (nome, data_nascimento) VALUES
    ('João', '2000-01-15'),
    ('Maria', '1999-05-20'),
    ('Pedro', '2001-09-10');

-- Insere os dados na tabela Cursos
INSERT INTO cursos (nome, descricao) VALUES
    ('Matemática', 'Curso de Matemática Avançada'),
    ('História', 'Curso de História Moderna'),
    ('Ciências', 'Curso de Ciências Naturais');

-- Insere os dados na tabela Notas
INSERT INTO notas (aluno_id, curso_id, nota) VALUES
    (1, 1, 8.5),
    (2, 1, 9.0),
    (1, 2, 7.0);

-- Insere os  dados na tabela Inscricoes
INSERT INTO inscricoes (aluno_id, curso_id, data_inscricao) VALUES
    (1, 1, '2023-01-10'),
    (2, 1, '2023-01-11'),
    (1, 2, '2023-01-12');
   
--Realiza as consultas JOIN

SELECT alunos.nome, cursos.nome AS curso, notas.nota
FROM alunos
INNER JOIN notas ON alunos.aluno_id = notas.aluno_id
INNER JOIN cursos ON notas.curso_id = cursos.curso_id;

SELECT alunos.nome, cursos.nome AS curso, inscricoes.data_inscricao
FROM alunos
LEFT JOIN inscricoes ON alunos.aluno_id = inscricoes.aluno_id
LEFT JOIN cursos ON inscricoes.curso_id = cursos.curso_id;

SELECT alunos.nome, cursos.nome AS curso
FROM alunos
RIGHT JOIN inscricoes ON alunos.aluno_id = inscricoes.aluno_id
RIGHT JOIN cursos ON inscricoes.curso_id = cursos.curso_id;

SELECT alunos.nome, cursos.nome AS curso
FROM alunos
FULL JOIN inscricoes ON alunos.aluno_id = inscricoes.aluno_id
FULL JOIN cursos ON inscricoes.curso_id = cursos.curso_id;




