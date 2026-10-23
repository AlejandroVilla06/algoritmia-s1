Proceso Propinas
	Definir cuenta, personas, total,totalporpersona Como Real
	Definir porcentaje Como Real
	Escribir "Total cuenta "
	Leer cuenta
	Escribir "Personas totales "
	Leer personas
	Escribir "Porcentaje propina "
	Leer porcentaje
	
	total <- cuenta + (cuenta * porcentaje/100)
	totalporpersona <- total / personas
	
	Escribir "El total de la cuenta es: ", total
	Escribir "El total por persona es: ", totalpersona
	
	
FinProceso
