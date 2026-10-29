Algoritmo ValidarRegistro
    Definir edad Como Entero
	Definir respuesta Como Caracter
	Escribir "Que edad tienes? "
	Leer edad
	Escribir "¿Acepta los terminos?"
	Leer respuesta
	respuesta <- Mayusculas(respuesta)
	
	Si edad >= 14 y respuesta = "S" Entonces
		Escribir "Registro Exitoso"
	SiNo
		Escribir "Registro invalido "
	FinSi

FinAlgoritmo
