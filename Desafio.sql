-- Orçamento está impactando positivamente nas notas?

select
	esc.orcamento_anual as orcamento,
	avg(mat.nota) as media_nota
from academico.matricula as mat
left join academico.escola as esc
	on mat.id_escola = esc.id
group by orcamento
order by orcamento desc

-- Correlação
select 
    corr(esc.orcamento_anual, mat.nota) as correlacao
from academico.matricula as mat
left join academico.escola as esc
    on mat.id_escola = esc.id;

-- Qual tipo de escola tem um melhor rendimento educacional?

select
	tipo.descricao,
	avg(mat.nota) as media_nota
from academico.matricula as mat
left join academico.escola as esc
	on mat.id_escola = esc.id
left join academico.tipo_escola as tipo
	on esc.id_tipo_escola = tipo.id
group by tipo.descricao
order by media_nota;

-- Nossos alunos tem melhor desempenho em qual disciplina?
select * from academico.disciplina

select
	dis.descricao as disciplina,
    avg(mat.nota) as media_nota
from academico.disciplina as dis
left join academico.matricula as mat
	on mat.id_disciplina = dis.id
group by disciplina
order by media_nota;
