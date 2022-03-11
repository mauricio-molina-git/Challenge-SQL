--Se reutilizo tabla personas (Ejercicio 5)

/*
* Recibo un age como parametro, luego cuento la cantidad de repeticiones si el parametro es igual a un age de mi tabla
*/

create procedure spGetCantidad ( 
    @age int
	)
as
begin
    select count (age) 'Repeticiones: '
		FROM personas 
		where age = @age;
end

--EJECUCIÓN:
exec spGetCantidad 21;
