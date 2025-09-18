# Exercício 06 - Projeto SQL

Este repositório contém o projeto do exercício 06 de SQL,
envolvendo criação de tabelas, inserção de dados, consultas e análise de desafios.

## Estrutura do repositório:
```
  Exercicio-06/
   ├── criacao_tabelas.sql
   ├── inserts.sql
   ├── consultas_exercicios.sql
   └── desafio.sql
   ├── docs/
     └── desafio_resolucao.md
   └── README.md
```
## Estrutura dos arquivos

| Arquivo | Descrição |
|---------|-----------|
| criacao_tabelas.sql | Script para criar todas as tabelas do banco |
| inserts.sql | Script para inserir os dados nas tabelas |
| consultas_exercicios.sql | Queries das questões do exercício |
| desafio.sql | Resolução do desafio proposto no exercício |

### Exemplos de Queries

**Criação de Tabela:**

```sql
CREATE TABLE academico.estudantes (
    id SERIAL PRIMARY KEY,
    nome_estudante VARCHAR(100),
    genero VARCHAR(10)
);
```
**Inserção de Dados:**

```sql
INSERT INTO academico.estudantes (nome_estudante, genero)
VALUES ('Larissa', 'Feminino');
);
```

**Consulta de desempenho por disciplina:**

```sql
SELECT dis.descricao, AVG(mat.nota)
FROM academico.disciplina AS dis
LEFT JOIN academico.matricula AS mat
    ON mat.id_disciplina = dis.id
GROUP BY dis.descricao
ORDER BY AVG(mat.nota) DESC;

```
### Documentação
| Arquivo | Descrição |
|---------|-----------|
| docs/desafio_resolucao.md | Respostas, explicações e sugestões de melhoria do desafio |

## Como usar

1. Clone o repositório:
```bash
git clone https://github.com/seuusuario/exercicio-06.git

```
2. Execute os arquivos .sql no seu banco PostgreSQL na seguinte ordem:

  * criacao_tabelas.sql

  * inserts.sql

  * consultas_exercicios.sql ou sql/desafio.sql

3. Consulte as explicações e respostas no arquivo docs/desafio_resolucao.md
