use Challenge;

/*
* Se reutilizo tabla persons y paises (ejercicio11)
* Se uso varchar en el atributo fecha en lugar de date ya que sino SQL Server convertira la cadena vacia en una fecha de referencia
* en mi caso 1900-01-01.
*/

--Creación tablas:
create table vencimientos (
	id int,
	fvto varchar(15)
);

-- Alta de registros:

insert into vencimientos (id, fvto)
	select 1, '1/10/23' union
	select 2, '22/5/25' union
	select 5, '22/1/23' union
	select 6, '15/6/28';

/*
* En este caso opte por utilizar un left join para así incluir todos los datos de la tabla izquierda, asi mismo los null o vacios.
* Luego hago una condición, si la fecha de vto es nulla, muestro vacio, caso contrario, muestro la fecha.
*/

select  p.id,
		p.name,
		p.age,
		CASE WHEN (v.fvto IS NULL) THEN  ''
		ELSE v.fvto end as 'fecha'

from persons p
left join vencimientos v
on v.id = p.id;