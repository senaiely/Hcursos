/*
DML
CRUD (inserção, seleciona, atualiza, deleta)
*/

use hcursos_tarde;

--insere um novo registro na linha passando as colunas e valores
insert into categorias(nome)
	values ('desenvolvimento')

--insere um novo registro na linha passando as colunas e valores
insert into categorias
	values ('informática')

--insere um novo registro na linha passando as colunas e valores
insert into categorias(nome)
	values ('design'),('marketing')

/*
	insert into categorias
	values('informática')

	-- não irá funcionar, pois definimos a coluna como sendo 'unique', não podendo haver duas iguais.
*/

-------------------------------------------------------------------------------------------------------

--lista todos os registros e campos da tabela 'categorias'
select * from categorias

--lista somente o campo nome da tabela 'categorias'
select nome from categorias

--ordena pelo campo id em ordem crescente.
select * from categorias order by id asc

--ordena pelo campo ome em rdem decrescente.
select * from categorias order by nome desc

--seleciona todas as colunas do registro onde o id é 1
select * from categorias where id = 1

--seleciona todos os registros onde contenha a letra e (antes,qualquer e depois)
select * from categorias where nome like '%e%'
select * from categorias where nome like 'e%'
select * from categorias where nome like '%e'

--maior/menor
select * from categorias where id >= 2
select * from categorias where id >= 2 and <=4 --(between)
select * from categorias where id > 2 and <4
select * from categorias where id >= 2

--entre 
select * from categorias where id between 2 and 4

--pesquisar varios
select * from categorias where id in(2,3,4)

select * from categorias where id in(2,3,4) like '%e%'

--primeiros
select top 2 * from categorias where id = 1

--ultimos
select top 2 * from categorias where id = 1 order by id desc

--saber qnt de registros que tem na tabela
select count (*) from categorias

--pesquisa todos menos o diferente
select * from categorias where not id = 3 
select * from categorias where id <> 3
-------------------------------------------------------------------

update categorias set nome = 'desenvolvimento' where id = 1

-------------------------------------------------------------------

delete from categorias where id = 4
