create database Hcursos_tarde

use Hcursos_tarde

create table categorias(
	id int identity primary key
	,nome varchar(250) not null unique
) 



create table professores(
	id int identity primary key
	,nome varchar(250) not null 
) 

create table alunos(
	id int identity primary key
	,nome varchar(250) not null 
) 

create table cursos(
	id int identity primary key
	,nome varchar(255) not null 
	,titulo varchar(255) not null
	,professor int foreign key references professores (id) not null
	,categoria int foreign key references categorias (id) not null
) 

create table cursos_alunos(
	 cursos int foreign key references cursos (id)
	,alunos int foreign key references alunos (id)
)