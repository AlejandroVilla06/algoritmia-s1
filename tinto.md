Proceso tinto
	
	Definir marca,tipoAgua como Cadena
	Definir cantidadCafe,cantidadAgua Como Real
	Definir azucar como Cadena
	
	Escribir "Pidiendo la Marca"
	Leer marca
	Escribir "Cantidad de cafe"
	Leer cantidadCafe
	Escribir "Cantidad de Agua"
	Leer cantidadAgua
	Escribir "Tipo Agua (fria/caliente)"
	Leer tipoAgua
	si tipoAgua = "fria" Entonces
		Escribir "Calentar el agua en olla"
	FinSi
	Escribir "Servir agua en el pocillo"
	Escribir "Agregar cafe: ", cantidadCafe
	Escribir "Lleva azucar (si/no)"
	Leer azucar
	si azucar = "si" Entonces
		Escribir "Agregar azucar"
	FinSi
	Escribir "Revolver lentamente y servir"
	
FinProceso
	