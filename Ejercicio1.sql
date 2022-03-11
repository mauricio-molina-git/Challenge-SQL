/*
 * Cree una BD para realizar los ejercicios.
 */

create database Challenge;

use Challenge;

/*
 * Al mirar la tabla y ver que no existen repeticiones, al campo id le asigne una clave primaria. Si se entra en detalle, se le puede asignar
 * un id que sea autonumerico, es decir identity (1, 1).
 */

create table valores (
	id int primary key not null,
	value int
);

-- Alta de registros:

insert into valores (id, value)
	select 1, -56 union
	select 2, 76 union
	select 3, -84 union
	select 4, 96 union
	select 5, -47;

/*
 * Si el valor es positivo lo multiplico por -1 para que dicho valor se convierta en negativo.
 * Si es negativo hago el mismo proceso para que se convierta en positivo.
 */
 
select case when (value > 0 ) then (value * -1) 
	   else (value * -1) END AS 'Resultados:' 
	   FROM valores;
	   
--Borrado tabla
drop table valores;
