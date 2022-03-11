/*
* El SP recibe una fecha en formato date, luego utilizo la funci�n DATEPART para obtener el numero de dia especifico. A partir de esto
* segun el numero de dia voy mostrando el nombre de dicho dia.
*/

create procedure spGetDia ( 
    @fecha date
	)
	as
	begin
		SELECT (case DATEPART(dw, @fecha)
		when 2 then 'Lunes'
		when 3 then 'Martes'
		when 4 then 'Mi�rcoles'
		when 5 then 'Jueves'
		when 6 then 'Viernes' 
		when 7 then 'S�bado'
		when 1 then 'Domingo' end) AS Dia;
	end

--Ejecuci�n:
exec spGetDia '2022/02/02';