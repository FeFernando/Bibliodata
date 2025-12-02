# 📚 Bibliodata — Sistema de Gerenciamento de Biblioteca Acadêmica

Este repositório contém o projeto **Bibliodata**, desenvolvido para gerenciar o acervo, os usuários e os empréstimos de uma biblioteca acadêmica. O projeto segue boas práticas de modelagem, normalização e manipulação de dados utilizando SQL (MySQL ou PostgreSQL).

Inclui:

* Modelo lógico (DER) revisado e normalizado
* Scripts SQL completos (DDL + DML)
* Consultas utilizando SELECT, JOIN, WHERE, ORDER BY e LIMIT
* Comandos de UPDATE e DELETE controlados
* Estrutura clara para avaliação acadêmica

---

## 📁 Estrutura do Repositório

```
/
├── ddl/                 # Scripts de criação das tabelas (Modelo Lógico)
│   └── create_tables.sql
│
├── dml/                 # Scripts de manipulação de dados
│   ├── inserts.sql
│   ├── selects.sql
│   └── updates_deletes.sql
│
├── docs/                # Documentação
│   └── Normalização.pdf
│
└── README.md            # Documentação principal
```

---

# 🎯 Objetivo do Projeto

Criar um sistema funcional de banco de dados para uma **biblioteca acadêmica**, permitindo:

* Cadastro e consulta de usuários
* Cadastro de livros, autores e exemplares
* Registro e controle de empréstimos
* Relatórios básicos com consultas SQL
* Garantia de integridade referencial e dados normalizados (1FN, 2FN e 3FN)

---

# 🗂️ Modelo Lógico e Normalização

O projeto está totalmente normalizado até a **3ª Forma Normal (3FN)**.

Entidades principais:

* **Usuario**
* **Autor**
* **Livro**
* **Livro_Autor** (tabela associativa)
* **Exemplar**
* **Emprestimo**
* **Emprestimo_Item** (tabela associativa)

Um DER revisado encontra-se em `/docs/DER.png`.

---

# 🛠️ Ambiente de Execução

Você pode usar:

* **MySQL Workbench** (recomendado)
* **PGAdmin (PostgreSQL)**

Certifique-se de:

1. Criar um banco de dados novo
2. Executar primeiro os scripts em `/ddl/`
3. Executar depois os scripts em `/dml/`

---

# 🧱 1. Script DDL — Criação das Tabelas

Local: `/ddl/create_tables.sql`

(O arquivo contém todas as instruções para criar as tabelas do sistema com chaves primárias e estrangeiras.)

---

# 📥 2. Script de INSERT — Povoamento Inicial

Local: `/dml/inserts.sql`

O script inclui dados para:

* Usuários
* Autores
* Livros
* Exemplares
* Empréstimos
* Itens de Empréstimo

---

# 🔍 3. Script de SELECT — Consultas Relevantes

Local: `/dml/selects.sql`

Consultas disponíveis:

* Listar livros e seus autores
* Listar empréstimos com nomes dos usuários
* Exibir exemplares disponíveis
* Listar usuários mais recentes
* Verificar exemplares emprestados

---

# ✏️ 4. Script de UPDATE e DELETE

Local: `/dml/updates_deletes.sql`

Inclui:

### **UPDATE**

* Atualizar situação de exemplar
* Ajustar dados de livros
* Corrigir cadastro de usuário

### **DELETE**

* Remover autores sem livros
* Excluir exemplares nunca emprestados
* Apagar empréstimos já finalizados

Todos os comandos respeitam integridade referencial.

---

# 🚀 Como Executar

### 1. Clone o repositório

```bash
git clone https://github.com/seuusuario/bibliodata.git
cd bibliodata
```

### 2. Crie o banco de dados

```sql
CREATE DATABASE bibliodata;
USE bibliodata;
```

### 3. Execute o script de criação das tabelas

Importe `/ddl/create_tables.sql` no Workbench/PGAdmin.

### 4. Execute o script de inserts

Importe `/dml/inserts.sql`.

### 5. Teste as consultas

Execute os arquivos `selects.sql` e `updates_deletes.sql`.

---

# 📦 Requisitos da Avaliação — Todos Atendidos

✔ Scripts DDL (criação das tabelas)
✔ Inserts completos para povoar o banco
✔ Mínimo de 2–5 SELECTs (o projeto contém 5)
✔ Mínimo de 3 UPDATEs (o projeto contém 3)
✔ Mínimo de 3 DELETEs (o projeto contém 3)
✔ Normalização documentada
✔ README claro e pronto para avaliação
✔ Estrutura organizada para GitHub

---

