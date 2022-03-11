use Challenge;

--Creación tabla:
 
 
create table ciudadanos (
	id int primary key not null,
	name varchar(25),
	country varchar (25)
);

--Alta de registros:

insert into ciudadanos (id, name, country)
	select 1, 'Bob Smith', 'United States' union
	select 2, 'Jim Jones', 'China' union
	select 3, 'Sam White', 'Japan' union
	select 4, 'Jess Black', 'Canada' union
	select 5, 'Will Wilson', 'Germany' union
	select 6, 'Wilson Scott', 'England' union
	select 7, 'Scott Daniels', 'France' union
	select 8, 'Daniel Jackson', 'Canada' union
	select 9, 'Jack Johnson', 'United States'; 

-- Mostrame los nombres solo de los ciudadanos que no sean de United States y Canada, los demas necesitan pasaporte

select name 'Requieren pasaporte: '
	from ciudadanos
	where country != 'United States' AND
		  country != 'Canada';
		  
--Borrado tabla
drop table ciudadanos;
