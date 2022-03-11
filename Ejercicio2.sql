use Challenge;


--Creación tabla, en este caso no le asigne una PK ya que el campo divisionId puede tener varias repeticiones.

create table divisones (
	divisionId int,
	year int,
	revenue int
)

---- Alta de registros:

insert into divisones (divisionId, year, revenue)
	select 1, 2018, 60 union
	select 1, 2021, 40 union
	select 1, 2020, 70 union
	select 2, 2021, -10 union
	select 3, 2018, 20 union
	select 3, 2016, 40 union
	select 4, 2021, 50 

-- Que muestre las divisionId que tuvieron un ingreso positivo (mayor a 0) en el año 2021. Al tener que cumplirse ambas condiciones se uso AND

select divisionId as 'Division ID:'
	from divisones
	where revenue > 0 and year = 2021;
	
--Borrado tabla
drop table divisones;
