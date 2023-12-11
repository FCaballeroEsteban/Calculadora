
Algoritmo Calculadora
	Escribir ""
	Escribir "----------Bienvenido a tu calculadora :D----------"
	Escribir ""
	Escribir "Elige la operacion que deseas realizar "
	Escribir " (+)  Suma "
	Escribir " (-) Resta "
	Escribir " (x) Multiplicacion "
	Escribir " (/) Division "
	Leer eleccion
	Escribir "" 
	Definir U como entero 

	Segun eleccion Hacer
		"+":
			Escribir "Cuantos numeros deseas colocar en tu calculadora"Sin Saltar
			Leer cant
			Dimension v[cant]
			Para U <- 1 Hasta cant Con Paso 1 Hacer
				Escribir ""
				Escribir "Digite los numeros " , U Sin Saltar
				Leer v[U]
			FinPara
			a=0
			Para U <- 1 Hasta cant Con Paso 1 Hacer
				p <- v[U]
				a <- suma(a,p);
			FinPara
			Escribir a;
		"-": 
			Escribir "Cuantos numeros deseas colocar en tu calculadora" Sin Saltar
			Leer cant
			Dimension v[cant]
			Para U <- 1 Hasta cant Con Paso 1 Hacer
				Escribir ""
				Escribir "Digite los numeros " , U Sin Saltar
				Leer v[U]
			FinPara
			a=v[1]
			Para U <- 1 Hasta cant -1 Con Paso 1 Hacer
				p <- v[U+1]
				a <- resta(a,p);
			FinPara
			Escribir a;
		"x": 
			Escribir "Cuantos numeros deseas colocar en tu calculadora" Sin Saltar
			Leer cant
			Dimension v[cant]
			Para U <- 1 Hasta cant Con Paso 1 Hacer
				Escribir ""
				Escribir "Digite los numeros " , U Sin Saltar
				Leer v[U]
			FinPara
			Escribir "Elija que tipo de multiplicacion desea hacer ? "
			Escribir " 1 - Multiplicacion solo pares "
			Escribir " 2 - Multiplicacion solo impares "
			Escribir " 3 - Multiplicacion normal"
			Leer eleccion
			Segun eleccion hacer
				1: 
					a=1
					Para U <- 1 Hasta cant Con Paso 1 Hacer
						Si v[U] mod 2 = 0 Entonces
							p <- v[U]
							a <- multiplicacion(a,p);
						FinSi
					FinPara
					Escribir a;
				2:
					a=1
					Para U <- 1 Hasta cant Con Paso 1 Hacer
						Si v[U] mod 2 <> 0 Entonces
							p <- v[U]
							a <- multiplicacion(a,p);
						FinSi
					FinPara
					Escribir a;
				3: 
					a=1
					Para U <- 1 Hasta cant Con Paso 1 Hacer
						p <- v[U]
						a <- multiplicacion(a,p);
					FinPara
					Escribir a;
			FinSegun
		"/":
			Escribir "Cuantos numeros deseas colocar en tu calculadora"Sin Saltar
			Leer cant
			Dimension v[cant]
			Para U <- 1 Hasta cant Con Paso 1 Hacer
				Escribir ""
				Escribir "Digite los numeros " , U Sin Saltar
				Leer v[U]
			FinPara
			a = v[1];
			Para U <- 1 Hasta cant-1 Con Paso 1 Hacer
				p <- v[U+1]
				a <- division(a,p);
			FinPara
			Escribir a;
	FinSegun
FinAlgoritmo
Funcion resultado <- suma(a,p)
	resultado = a + p ; 
FinFuncion

Funcion resultado <- resta(a,p)
	resultado = a - p;
FinFuncion

Funcion resultado <- multiplicacion(a,p)
	resultado = a * p;
FinFuncion

Funcion resultado <- division(a,p)
	resultado = a / p;
FinFuncion

