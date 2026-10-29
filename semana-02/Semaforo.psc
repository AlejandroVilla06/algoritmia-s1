Algoritmo Semaforo
	Definir unidades Como Entero
	Escribir "Dame las unidades"
	Leer unidades
	Si unidades < 0 Entonces
		Escribir "Error"
	SiNo
		Si unidades = 0 Entonces
			Escribir "Rojo: agotado"
		SiNo
			Si unidades <= 10 Entonces
				Escribir "Amarillo: pedir"
			SiNo
				Escribir "Verde: todo bien"
			FinSi
		FinSi
	FinSi
FinAlgoritmo
