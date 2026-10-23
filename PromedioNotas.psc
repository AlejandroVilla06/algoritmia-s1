Proceso PromedioNotas
	Definir cantidad Como Entero
	Definir nota, suma, promedio Como Real
	Escribir "Cuantas notas vas a ingresar?"
	Leer cantidad
	suma <- 0
	Para i <- 1 Hasta cantidad Hacer
		Escribir "Nota ", i  
		leer nota 
		suma <- suma + nota 
	FinPara
		promedio <- suma/cantidad
		Escribir  "El promedio es: ", promedio
FinProceso
