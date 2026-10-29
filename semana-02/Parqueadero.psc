Algoritmo Parqueadero
	Definir tipo, minutos,horas Como Entero
	Definir tarifa, valor Como Real
	Definir factura Como Caracter
	
	Escribir "Tipo de vehiculo 1: Carro, 2: Moto"
	leer tipo
	Escribir "Escribe tus minutos "
	leer minutos
	Escribir "Factura (SI/NO)"
	Leer factura
	
	factura <- Mayusculas(factura)
	
	si minutos < 0 Entonces
		Escribir "Error"
	SiNo
		Segun tipo Hacer
			1:
				tarifa <- 4000
			2: 
				tarifa <- 2000
			De Otro Modo:
				tarifa <- 0
		FinSegun
		Si tarifa = 0 Entonces
			Escribir "Tipo de vehiculo no Valido"
		SiNo
			Si minutos <= 15 Entonces
				valor <- 0
			SiNo
				horas <- trunc((minutos + 59) / 60)
				valor <- horas * tarifa
				Si valor > 30000 Entonces
					valor <- 30000
				FinSi
				Si factura = "S" Entonces
					valor <- valor / 2
				FinSi
			FinSi
			Escribir "Valor a pagar: $", valor
		FinSi
	FinSi
	
FinAlgoritmo
