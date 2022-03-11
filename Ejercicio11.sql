use Challenge;

/*
* Creación tablas:
* Cree primero la tabla paises ya que luego es FK de la tabla persons
* Se puede hacer de esta manera o asignarle la fk luego de crear la tabla utilizando un alter TABLE.
*/

create table paises (
	id int primary key not null,
	descr varchar(25)
);

create table persons(
	id int primary key not null,
	idNac int,
	name varchar(25),
	age int

	Constraint FK_Nacionalidad foreign key(idNac)
	References paises(id),
);

-- Alta de registros:

insert into paises (id, descr)
	select 1, 'Argentino' union
	select 2, 'Italiano' union
	select 3, 'Español' union
	select 4, 'Alemán';

insert into persons (id, idNac, name, age)
	select 1, 1, 'Bob', 21 union
	select 2, 1, 'Sam', 19 union
	select 3, 2, 'Jill', 18 union
	select 4, 3, 'Jim', 21 union
	select 5, 4, 'Sally', 19 union
	select 6, 2, 'Jess', 20 union
	select 7, 3, 'Will', 21;

/*
* Utilice un inner join para poder unir ambas tablas a través del ID de pais. Use alias para no estar escribiendo todo el nombre de la tabla
* per: tabla persons
* pa: tabla paises
*/

select per.id,
	   pa.descr,
	   per.name,
	   per.age

from persons per
inner join paises pa
on per.idNac = pa.id;

--Borrado tabla: no se borran ya que luego se usan
