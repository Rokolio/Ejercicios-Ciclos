// Crear un menú con las siguientes opciones:
// 		* Kilogramos a gramos
// 		* Gramos a miligramos
// 		* Tablas de multiplicar
// El menú debe ser cíclico, puede utilizar cualquiera de las estructuras de repetición para la parte cíclica.
// Debe contener una opción de salir en el menú para terminar el programa
Funcion op <- menu
	Escribir "********************************"
	Escribir "*              Menu            *"
	Escribir "* 1.  Kilogramos a gramos      *"
	Escribir "* 2.  Gramos a miligramos      *"
	Escribir "* 3.  Tablas de multiplicar    *"
	Escribir "* 4.  Salir                    *"
	Escribir "********************************"
	Escribir "Elija la opción deseada:"
	Leer op
FinFuncion

funcion KilogramosAGramos
	Definir kg, g Como Real
	Limpiar Pantalla
	Escribir "********************************"
	Escribir "* 1.  Kilogramos a gramos      *"
	Escribir "********************************"
	Escribir "Ingrese la cantidad de Kilogramos a convertir"
	Leer kg
	g <- kg*1000;
	Escribir kg, "Kg son iguales a: ", g, "g";
	Esperar 1 Segundos
	Escribir  " "
	Escribir "Pulse cualquier tecla para volver al menu principal"
	Esperar Tecla
	Limpiar Pantalla
FinFuncion

Funcion GramosAMiligramos
	Definir g, mg Como Real
	Limpiar Pantalla
	Escribir "********************************"
	Escribir "* 2.  Gramos a miligramos      *"
	Escribir "********************************"
	Escribir "Ingrese la cantidad de gramos a convertir"
	Leer g
	mg <- g*1000;
	Escribir g, "G son iguales a: ", mg, "mg";
	Esperar 1 Segundos
	Escribir  " "
	Escribir "Pulse cualquier tecla para volver al menu principal"
	Esperar Tecla
	Limpiar Pantalla
FinFuncion

Funcion TablaDeMultiplicar
	Limpiar Pantalla
	Escribir "********************************"
	Escribir "* 3.  Tablas de multiplicar    *"
	Escribir "********************************"
	Definir minumero, resultado como entero
    
    Escribir "Indique que numero de tabla desea visualizar:"
    Leer minumero
	Limpiar Pantalla
	Escribir "La tabla correspondiente al numero ingresado se muestra acontinuacion:"
	Escribir " "
    Para i <- 1 Hasta 10 con paso 1
		resultado <- minumero * i
		Escribir minumero, " x ", i, " = ", resultado
    FinPara
	esperar 1 Segundos
	Escribir " "
	Escribir "Pulse cualquier tecla para volver al menu principal"
	Esperar tecla
	Limpiar Pantalla
FinFuncion
Algoritmo ConvertidorDeKgAMgyGaMg
	Repetir
		op <- menu ()
		segun op Hacer
			1:
				KilogramosAGramos
			2:
				GramosAMiligramos
			3:	
				TablaDeMultiplicar
			4:
				Limpiar Pantalla
				Escribir "Fin del programa"
				Escribir " "
				Esperar 1 segundos
				Escribir "Hasta luego"
				Escribir " "
				Esperar 1 segundos
				Escribir "Pulse cualquier tecla para salir"
			de otro modo:
				Limpiar Pantalla
				escribir "Opcion no valida, pulse cualquier tecla para volverlo a intentar"
				Esperar Tecla
		FinSegun
	Hasta Que op = 4
FinAlgoritmo
	