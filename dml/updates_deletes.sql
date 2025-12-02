-- 1. Atualizar situação de um exemplar após devolução
UPDATE Exemplar
SET situacao = 'disponivel'
WHERE id_exemplar = 5;

-- 2. Alterar editora de um livro
UPDATE Livro
SET editora = 'Nova Editora'
WHERE id_livro = 2;

-- 3. Corrigir nome de um usuário
UPDATE Usuario
SET nome = 'Felipe C. Chanfrone'
WHERE id_usuario = 1;
