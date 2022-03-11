--Se reutilizo tabla personas (Ejercicio 5)

/*
* El SP recibe una ID. Luego elimina la tabla persona si dicho ID se encuentra en la tabla. Realiza el mismo procedimiento para la tabla vencimientos
* Luego realizo utilizo @@rowcount para saber si se afecto al menos una fila. Caso afirmativo muestro un 0, caso contrario -1
*/

create procedure sp_Delete ( 
    @id int
	)
as
begin
		  Delete FROM personas where @id = id
		  if @@rowcount > 0 select 0 AS Resultado
		  else select -1 AS Resultado

begin 
		  Delete FROM vencimientos where @id = id
end
end

--EJECUCIÓN:
exec sp_Delete 1;