use Challenge;

/*
 * Creación tabla:
 * Mismo caso, al no exister repeticiones, al campo id le asigne una clave primaria.
 */
create table personas (
	id int primary key not null,
	name varchar(25),
	age int
);

-- Alta de registros:

insert into personas (id, name, age)
	select 1, 'Bob', 21 union
	select 2, 'Sam', 19 union
	select 3, 'Jill', 18 union
	select 4, 'Jim', 21 union
	select 5, 'Sally', 19 union
	select 6, 'Jess', 20 union
	select 7, 'Will', 21;

/*
 * Realice un agrupamiento por edad y luego muestro un conteo de cada una de estas.
 */
 
select age 'Edad:', count(age) 'Repeticiones:'
	from personas
	group by age;
	
--Borrado tabla: no lo realizo ya que luego la reutilizo
