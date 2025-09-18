-- consultas
--01° estudantes e seus generos

select * from academico.estudantes
select * from academico.genero

select
	gen.descricao as genero,
	count(est.id) as total_estudante
from academico.estudantes as est
Left join academico.genero as gen
	on est.id_genero = gen.id
group by gen.descricao
order by total_estudante desc

02° -- Estudantes e suas series

select * from academico.estudantes
select * from academico.serie

select
	ser.descricao as serie,
	count(est.id) as total_estudante
from academico.estudantes as est
Left join academico.serie as ser
	on est.id_serie = ser.id
group by ser.descricao
order by total_estudante desc

03 --Escola e seus tipos

select * from academico.escola
select * from academico.tipo_escola

select
	t.descricao as tipo,
	count(esc.id) as total_escola
from academico.escola as esc
Left join academico.tipo_escola as t
	on esc.id_tipo_escola = t.id
group by t.descricao
order by total_escola desc

-- Questão 4: Disciplinas com estudantes matriculados

select * from academico.estudantes
select * from academico.disciplina
select * from academico.matricula

select
	dis.descricao as disciplina,
	count(est.id) as total_estudantes
from academico.estudantes as est
inner join academico.matricula as mat
	on est.id = mat.id_estudante
inner join academico.disciplina as dis
	on mat.id_disciplina = dis.id
group by dis.descricao
order by total_estudantes desc

-- Questão 5: Matrículas com escolas

select * from academico.matricula
select * from academico.escola

select
	esc.nome_escola,
	count(mat.id_escola) as total_matricula
from academico.escola as esc
left join academico.matricula as mat
	on esc.id = mat.id_escola
group by esc.nome_escola
order by total_matricula desc

-- Questão 6: Estudantes, escolas e notas

select * from academico.estudantes
select * from academico.escola
select * from academico.matricula

select
	esc.nome_escola,
	est.nome_estudante,
	mat.nota	
from academico.escola as esc
inner join academico.matricula as mat
	on esc.id = mat.id_escola
inner join academico.estudantes as est
	on est.id = mat.id_estudante
group by est.nome_estudante, esc.nome_escola, mat.nota;

-- Questão 7: Estudantes sem matrícula (quantidade)
select * from academico.estudantes
select * from academico.disciplina

select
	count(est.id) as "Estudantes sem matricula"
from academico.estudantes as est
left join academico.matricula as mat
	on est.id = mat.id_estudante
where mat.id_estudante is null

-- nomes dos estudantes sem matricula

select
	est.id,
	est.nome_estudante
from academico.estudantes as est
left join academico.matricula as mat
	on est.id = mat.id_estudante
where mat.id_estudante is null

-- Questão 8: Estudantes do gênero feminino (quantidade)

select * from academico.estudantes
select * from academico.genero

select
	count(est.id) as "Estudante_Feminino"
from academico.estudantes as est
inner join academico.genero as gen
	on est.id_genero = gen.id
where gen.id = 2

-- Questão 8: Estudantes do gênero feminino (nomes)

select * from academico.estudantes
select * from academico.genero

select
	est.nome_estudante
from academico.estudantes as est
inner join academico.genero as gen
	on est.id_genero = gen.id
where gen.id = 2
order by est.nome_estudante 

-- Questão 9: Média de nota por disciplina

select * from academico.disciplina
select * from academico.matricula

select 
	dis.descricao as disciplina,
	AVG(mat.nota) as media_nota
from academico.disciplina as dis
left join academico.matricula as mat
	on dis.id = mat.id_disciplina
group by dis.descricao
order by media_nota desc

-- Questão 10: Top 5 estudantes por nota

select * from academico.estudantes
select * from academico.matricula

select 
	est.nome_estudante as nome,
	mat.nota as nota
from academico.matricula as mat
inner join academico.estudantes as est
	on mat.id_estudante = est.id
order by mat.nota desc
limit 5;

