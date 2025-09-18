CREATE TABLE academico.tipo_escola(
	id SERIAL PRIMARY KEY,
	descricao text
);

CREATE TABLE academico.escola(
	id SERIAL PRIMARY KEY,
	nome_escola text,
	orcamento_anual numeric(18,2),
	id_tipo_escola int,
	FOREIGN KEY (id_tipo_escola) REFERENCES academico.tipo_escola(id)
);

CREATE TABLE academico.disciplina(
	id SERIAL PRIMARY KEY,
	descricao text
);

CREATE TABLE academico.genero(
	id SERIAL PRIMARY KEY,
	sigla varchar(1),
	descricao text
);

CREATE TABLE academico.serie(
	id SERIAL PRIMARY KEY,
	descricao text
);

CREATE TABLE academico.estudantes(
	id SERIAL PRIMARY KEY,
	nome_estudante text,
	id_genero int,
	id_serie int,
	FOREIGN KEY (id_genero) REFERENCES academico.genero(id),
  	FOREIGN KEY (id_serie) REFERENCES academico.serie(id)
);

CREATE TABLE academico.matricula(
	id SERIAL PRIMARY KEY,
	id_escola int,
	id_estudante int,
	id_disciplina int,
	nota numeric(18,2),
	FOREIGN KEY (id_escola) REFERENCES academico.escola(id),
  	FOREIGN KEY (id_estudante) REFERENCES academico.estudantes(id),
	FOREIGN KEY (id_disciplina) REFERENCES academico.disciplina(id)
	
);