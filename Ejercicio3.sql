use Challenge;

/*
 * Creación tabla:
 * Al mirar la tabla y ver que no existen repeticiones, al campo id le asigne una clave primaria.
 */
 
create table years (
	id int primary key not null,
	year int
);

---- Alta de registros:

insert into years (id, year)
	select 1, 1776 union
	select 2, 2001 union
	select 3, 1643 union
	select 4, 1865 union
	select 5, 1969;


/*
 * En este caso si el año lo tendriamos como tipo de dato date, se podria utilizar alguna función de SQL, al se un entero se debe realizar lo siguiente:
 * Al año se le suma 99 y al resultado se lo divide por 100, los digitos antes de la coma, indican que siglo es.
 */

select (year + 99) / 100 as 'Siglo:'
	from years;
	
--Borrado tabla
drop table years;
