/*1)"José da Silva é aluno de uma escola, e gostaria de saber a data para devolução do livro "Javascript Ninja" que ele pegou na biblioteca semana passada, 
pois ele não lembra o prazo nem o dia que retirou."*/
select 
	biblioteca.data_retirada,biblioteca.data_entrega,livro.titulo
from
	biblioteca
join
	livro
on
	biblioteca.id_livro = livro.id
where
	 livro.titulo like '%Javascript Ninja%';

/*"2)Um aluno deseja consultar se o livro "JQuery in Action" está disponível no momento"*/
select 
	livro.titulo,livro.disponivel
from
	livro
where
	 livro.titulo like '%JQuery in Action%';

/*"3)Maria Joaquina atende no balcão da biblioteca, ela precisa de uma lista de todos os livros que ela entregou ou recebeu ontem"*/
select
	atendente.id,biblioteca.data_entrega,livro.titulo
from
	biblioteca
join 
	livro
on
	biblioteca.id_livro = livro.id
join
	atendente
on
	biblioteca.id_atendente = atendente.id
where
	atendente.nome = 'Maria Joaquina'
and
	biblioteca.data_entrega = '2017-11-30';

/*4)"O diretor da escola deseja saber quais os 5 livros mais retirados pelos alunos, para que possa comprar mais livros parecidos"*/
select
	 livro.titulo,biblioteca.data_retirada, count(livro.id) as 'retirada'
from
	biblioteca
join
	livro
on
	biblioteca.id_livro = livro.id
group by 
	livro.titulo
order by 
	biblioteca.data_retirada desc
limit 5;

/*5)"O diretor da escola deseja saber quais livros não são retirados a mais de 1 ano, para que este sejam doados ou descartados"*/
select
	livro.titulo, biblioteca.data_retirada
from
      biblioteca 
join 
	livro 
on 
	biblioteca.id_livro = livro.id
where
	biblioteca.data_retirada not between '2016/12/25' and '2017/12/25';


