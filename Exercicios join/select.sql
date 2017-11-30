/*1) Exiba uma lista de clientes mostrando o vendedor que o atende, inclua na lista a cidade do cliente e a comissão do vendedor.*/
select 
	c.nome nome_cliente, c.cidade, v.nome nome_vendedor,v.comissao 
from 
	cliente c 
join 
	vendedor v 
on c.vendedor_id = v.id;

/*2) Exiba uma lista de clientes mostrando o vendedor que o atende, inclua na lista a cidade do cliente e a comissão do vendedor,
 porém somente nos casos onde a comissão for maior que 12%.*/
select
	c.nome nome_cliente, c.cidade, v.nome nome_vendedor, v.comissao
from 
	cliente c 
join 
	vendedor v    
on 
	c.vendedor_id = v.id 
where
	v.comissao > 0.12;


/*3) Exiba uma lista de clientes mostrando o vendedor que o atende, inclua na lista a cidade do cliente e a comissão do vendedor,
 porém somente nos casos onde a comissão for maior que 12% e o vendedor não seja da mesma cidade que o cliente.*/
select
	c.nome nome_cliente, c.cidade, v.nome nome_vendedor, v.comissao
from 
	cliente c 
join 
	vendedor v    
on 
	c.vendedor_id = v.id 
where
	v.comissao > 0.12
and
	v.cidade <> c.cidade ;


/*4) Exiba os detalhes de uma ordem, ou seja, número de ordem, data do pedido, quantidade de ordem, nome do cliente e vendedor e comissão do vendedor
 para um pedido*/
select
	p.numero,p.data,c.nome nome_cliente,v.nome nome_vendedor,v.comissao
from
	cliente c
join
	vendedor v
on
	c.vendedor_id = v.id 
join
	pedido p
on
	p.cliente_id = c.id;

/*5) Faça um relatório com o nome do cliente, a cidade, o número da ordem, a data e o montante em ordem crescente pela data do pedido.
 Para que assim possamos encontrar qualquer um dos clientes existentes não colocou nenhum pedido ou colocou um ou mais pedidos.*/
 
select 
	c.nome, c.cidade, p.numero, p.data, p.valor
from
	pedido p 
right join 
	cliente c 
on 
	p.cliente_id = c.id
order by
	p.data;

/*6) Prepare uma lista em ordem crescente para os vendedores que trabalham para um ou mais clientes ou ainda não se juntam a nenhum dos clientes*/
select 
	v.nome as nome_vendedor, c.nome as nome_cliente
from
	vendedor v left join cliente c on v.id = vendedor_id
order by
	v.nome