Algoritmo ATM
	saldo <- 500000
	contador <- 1
	Mientras contador<=3 Hacer
		Escribir 'Ingrese su DNI'
		Leer DNI
		Escribir 'Ingrese su contraseña'
		Leer contraseña
		Si DNI == "123456789" y contraseña=='9876' Entonces
			contador <- 4
			respuesta <- 0
			Mientras respuesta<>4 Hacer
				Escribir '==========================='
				Escribir 'Bienvenido John Castillo'
				Escribir '==========================='
				Escribir '1: = Consultar saldo'
				Escribir '2: = Depositar'
				Escribir '3: = Retirar dinero'
				Escribir '4: = Salir'
				Leer respuesta
				Segun respuesta  Hacer
					1:
						Escribir '===================================='
						Escribir 'Su saldo actual es: $',saldo
						Escribir '===================================='
					2:
						Escribir 'Ingrese la cantidad a depositar'
						Leer deposito
						saldo <- saldo+deposito
						Escribir '===================================='
						Escribir 'La cantidad depositada es de: $',deposito
						Escribir 'Su nuevo saldo es: $',saldo
						Escribir '===================================='
					3:
						Escribir 'Ingrese la cantidad a retirar'
						Leer retiro
						Si retiro>saldo Entonces
							Escribir '===================================='
							Escribir 'No tiene fondos suficientes'
							Escribir 'Su saldo actual es: $',saldo
							Escribir '===================================='
						SiNo
							saldo <- saldo-retiro
							Escribir '===================================='
							Escribir 'La cantidad retirada fue de: $',retiro
							Escribir 'Su nuevo saldo es: $',saldo
							Escribir '===================================='
						FinSi
					4:
						Escribir 'Gracias por usar nuestros servicios.'
						
				FinSegun
			FinMientras
		SiNo
			contador <- contador+1
			Si contador==4 Entonces
				Escribir 'Cantidad de intentos excedida, intente mas tarde :('
			SiNo
				Escribir '*****Usuario o Contraseña Incorrectos*****'
			FinSi
		FinSi
	FinMientras
FinAlgoritmo
