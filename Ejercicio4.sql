use Challenge;

/*
 * Creación tabla:
 * Mismo caso, al no exister repeticiones, al campo id le asigne una clave primaria.
 */
create table numeros (
	id int primary key not null,
	value int
);

-- Alta de registros:

insert into numeros (id, value)
	select 1, 4 union
	select 2, 11 union
	select 3, 57 union
	select 4, 24 union
	select 5, 47;
	
/*
 * Para saber si un numero es par use el metodo clasico, compruebo si el resto del valor dividido 2 es 0, caso afirmativo, el numero es par
 * caso contrario el numero es impar. También se podria consultar primero por los valores impares, si el numero el resto es % de 0 es impar
 */
 
select case when value % 2 = 0 then CONVERT(varchar(4), 'Par')
		else CONVERT(varchar(5), 'Impar') end 'Resultado:'
		FROM numeros;
		
--Borrado tabla
drop table numeros;
