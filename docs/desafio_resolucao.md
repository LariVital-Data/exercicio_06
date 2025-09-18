# Desafio - Análise de Dados do Banco Acadêmico

## 1. Orçamento está impactando positivamente nas notas?

**Resposta:** Não.  

Observando os dados:
- Escola com orçamento intermediário (≈2,5M) obteve a maior média: 83,77  
- Escola com maior orçamento (≈3,1M) obteve média: 81,15  
- Escola com menor orçamento (≈1,7M) obteve média: 81,18  

Conclusão: **Mais orçamento não garante notas maiores**, outros fatores são determinantes.

---

## 2. Qual tipo de escola tem um melhor rendimento educacional?

- Escolas Públicas: média de notas 81,46  
- Escolas Particulares: **não é possível calcular**, pois não há matrículas vinculadas.

Conclusão: com os dados atuais, **apenas as escolas públicas possuem dados para avaliação**.

---

## 3. Nossos alunos têm melhor desempenho em qual disciplina?

- Disciplina com maior média: **Redação** → 81,46  
- Disciplina Matemática: resultado `NULL` (não há dados de notas associadas).

Observação: a disciplina Matemática está cadastrada, mas não possui dados de notas.

---

## Sugestão de melhoria na análise

- Incluir **prints ou imagens do desafio original** para referência visual  
- Documentar **metodologia e conclusões** de forma clara  
- Mantém a **query** no `desafio.sql` e as respostas na documentação, assim cada coisa fica no seu lugar.
