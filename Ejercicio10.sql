-- Reutilización Tabla personas (Ejercicio 5)

use Challenge;

-- Utilice la función sum para que realice una suma total de age.

select sum(age) 'Suma total edades:'
	from personas;
	
--Borrado tabla: no lo realizo ya que luego la reutilizo
