use Challenge;

/*
 * Creaci�n tabla:
 * Mismo caso, al no exister repeticiones, al campo id le asigne una clave primaria.
 */
 
create table nombres (
	id int primary key not null,
	name varchar(25)
);

-- Alta de registros:

insert into nombres (id, name)
	select 1, 'Bob' union
	select 2, 'Sam' union
	select 3, 'Jill' union
	select 4, 'Jim' union
	select 5, 'Sally' union
	select 6, 'Jess' union
	select 7, 'Will';

/*
* Lo que realice en este caso fue un concatenamiento de palabras, en terminos especificos una union de cadenas. 
* Para eso aplique la funci�n concat, aunque tambien funciona concatenar las cadenas utilizando el +
* '�Hola! ' + name + '�C�mo est�s hoy?'
 */

select CONCAT ('�Hola! ', name, ' �C�mo est�s hoy?') 
	from nombres;
	
--Borrado tabla
drop table nombres;
