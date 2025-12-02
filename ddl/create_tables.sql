-- ======================
-- TABELA USUARIO
-- ======================
CREATE TABLE Usuario (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(120) NOT NULL,
    email VARCHAR(120) NOT NULL UNIQUE,
    tipo VARCHAR(20) NOT NULL CHECK (tipo IN ('aluno','professor','funcionario')),
    data_cadastro DATE NOT NULL
);

-- ======================
-- TABELA AUTOR
-- ======================
CREATE TABLE Autor (
    id_autor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(120) NOT NULL
);

-- ======================
-- TABELA LIVRO
-- ======================
CREATE TABLE Livro (
    id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(200) NOT NULL,
    ano_publicacao INT,
    editora VARCHAR(120)
);

-- Tabela associativa Livro-Autor
CREATE TABLE Livro_Autor (
    id_livro INT,
    id_autor INT,
    PRIMARY KEY (id_livro, id_autor),
    FOREIGN KEY (id_livro) REFERENCES Livro(id_livro),
    FOREIGN KEY (id_autor) REFERENCES Autor(id_autor)
);

-- ======================
-- TABELA EXEMPLAR
-- ======================
CREATE TABLE Exemplar (
    id_exemplar INT PRIMARY KEY AUTO_INCREMENT,
    id_livro INT NOT NULL,
    codigo_interno VARCHAR(30) NOT NULL UNIQUE,
    situacao VARCHAR(20) NOT NULL DEFAULT 'disponivel',
    FOREIGN KEY (id_livro) REFERENCES Livro(id_livro)
);

-- ======================
-- TABELA EMPRESTIMO
-- ======================
CREATE TABLE Emprestimo (
    id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT NOT NULL,
    data_emprestimo DATE NOT NULL,
    data_prevista DATE NOT NULL,
    data_devolucao DATE,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

-- ======================
-- TABELA EMPRESTIMO_ITEM
-- ======================
CREATE TABLE Emprestimo_Item (
    id_emprestimo INT,
    id_exemplar INT,
    PRIMARY KEY (id_emprestimo, id_exemplar),
    FOREIGN KEY (id_emprestimo) REFERENCES Emprestimo(id_emprestimo),
    FOREIGN KEY (id_exemplar) REFERENCES Exemplar(id_exemplar)
);
