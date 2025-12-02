-- 1. Listar todos os livros com seus autores
SELECT l.titulo, a.nome AS autor
FROM Livro l
JOIN Livro_Autor la ON la.id_livro = l.id_livro
JOIN Autor a ON a.id_autor = la.id_autor
ORDER BY l.titulo;

-- 2. Mostrar todos os empréstimos com nome do usuário
SELECT e.id_emprestimo, u.nome, e.data_emprestimo, e.data_prevista
FROM Emprestimo e
JOIN Usuario u ON u.id_usuario = e.id_usuario;

-- 3. Livros disponíveis
SELECT l.titulo, ex.codigo_interno
FROM Exemplar ex
JOIN Livro l ON l.id_livro = ex.id_livro
WHERE ex.situacao = 'disponivel';

-- 4. Limitar aos 2 usuários mais recentes
SELECT nome, email, data_cadastro
FROM Usuario
ORDER BY data_cadastro DESC
LIMIT 2;

-- 5. Consultar exemplares emprestados
SELECT u.nome, l.titulo, ex.codigo_interno
FROM Emprestimo_Item ei
JOIN Emprestimo e ON e.id_emprestimo = ei.id_emprestimo
JOIN Exemplar ex ON ex.id_exemplar = ei.id_exemplar
JOIN Livro l ON l.id_livro = ex.id_livro
JOIN Usuario u ON u.id_usuario = e.id_usuario;
