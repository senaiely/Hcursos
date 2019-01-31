use Hcursos_tarde

--Inserir todos os nomes da mesa na tabela Alunos
insert into alunos(nome)
	values ('Evelyn'),('Ariel'),('Marcelo'),('Enzo'),('Felipe')

--Retornar o seu registro(id,nome)
select * from alunos where id = ;1

--Retornar os registros que contenham a letra i no nome
select * from alunos where nome like '%i%'

--Retornar os registros que comecem com a sua letra
select * from alunos where nome like 'e%'

--Retornar os registros que terminem com o ou a 
select * from alunos where nome like '%o' or nome like '%a'
select * from alunos where nome like '%[o,a]'

--Retornar os registros com id entre 3 e 5 
select * from alunos where id between 3 and 5

--Retornar os registros em ordem alfabetica
select * from alunos order by nome asc

--Retornar a qntd de registros na tabela
select count (*) from alunos

--Atualizar nome da pessoa ao lado
update alunos set nome = 'Ariel Paixão' where id = 2

--Deletar a pessoa ao lado
delete from alunos where id = 2

--Add os profers
insert into professores(nome)
	values ('Fernando'),('Helena'),('Possarle')

select * from professores
