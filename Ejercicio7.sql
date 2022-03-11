use Challenge;


--Creación tabla:

create table articulos (
	id int primary key not null,
	name varchar(25),
	amountSold int
);

-- Alta de registros:

insert into articulos (id, name, amountSold)
	select 1, 'Cup', 11 union
	select 2, 'Saucer', 22 union
	select 3, 'Plate', 46  union
	select 4, 'Fork', 34 union
	select 5, 'Spoon', 45 union
	select 6, 'Knife', 78 union
	select 7, 'Mug', 23 union
	select 8, 'Glass', 64 union
	select 9, 'Tumbler', 24;
	
/*
* En este caso, muestro solo 5 articulos, esto lo limito utilizando la función top. Luego para mostrar los registros de mayor a menor le doy un orden
* descendente a partir de la amount Sold.
 */
 
select top(5) name as 'Articulos mas vendidos:'
	from articulos
	order by amountSold DESC;
	
--Borrado tabla
drop table articulos;
