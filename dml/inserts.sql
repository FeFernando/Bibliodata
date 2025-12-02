-- USUARIOS
INSERT INTO Usuario (nome, email, tipo, data_cadastro) VALUES
('Felipe Chanfrone', 'felipe@teste.com', 'aluno', '2024-01-10'),
('Maria Silva', 'maria@teste.com', 'professor', '2023-11-03'),
('João Pereira', 'joao@teste.com', 'funcionario', '2022-06-21');

-- AUTORES
INSERT INTO Autor (nome) VALUES
('Machado de Assis'),
('George Orwell'),
('J. K. Rowling');

-- LIVROS
INSERT INTO Livro (titulo, ano_publicacao, editora) VALUES
('Dom Casmurro', 1899, 'Editora A'),
('1984', 1949, 'Secker & Warburg'),
('Harry Potter e a Pedra Filosofal', 1997, 'Bloomsbury');

-- LIVRO-AUTOR
INSERT INTO Livro_Autor VALUES
(1, 1), -- Dom Casmurro → Machado
(2, 2), -- 1984 → Orwell
(3, 3); -- HP → Rowling

-- EXEMPLARES
INSERT INTO Exemplar (id_livro, codigo_interno, situacao) VALUES
(1, 'DC-001', 'disponivel'),
(1, 'DC-002', 'disponivel'),
(2, '1984-001', 'disponivel'),
(3, 'HP1-001', 'disponivel'),
(3, 'HP1-002', 'emprestado');

-- EMPRESTIMOS
INSERT INTO Emprestimo (id_usuario, data_emprestimo, data_prevista) VALUES
(1, '2024-03-01', '2024-03-15'),
(2, '2024-03-05', '2024-03-20');

-- EMPRESTIMO_ITEM
INSERT INTO Emprestimo_Item VALUES
(1, 5), -- Felipe pegou exemplar HP1-002
(2, 3); -- Maria pegou exemplar 1984-001
