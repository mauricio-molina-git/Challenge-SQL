-- Reutilizaci�n Tabla personas (Ejercicio 5)

use Challenge;

-- Utilice la funci�n distinct para que me traiga edades unicas.

select distinct(age) 'Edades unicas:'
	from personas;
	
--Borrado tabla: no lo realizo ya que luego la reutilizo
