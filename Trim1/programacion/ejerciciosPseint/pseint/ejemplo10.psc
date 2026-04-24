Algoritmo ejemplo10
	//Esteban Quiceno Duque
	//Bonificacion por ventas realizadas
	
	//Definicion de variables
	Definir cantVentas Como entero;
	Definir porcentajeBonificacion Como Real;
	Definir gananciaTotal Como Real;
	Definir gananciaBonificacion como real;
	Definir totalVentas como entero;
	
	//    asignacion de variable
	porcentajeBonificacion <- 0;
	
	Escribir "ingrese el total de ventas";
	Leer cantVentas;
	
	//proceso
	si (cantVentas > 50) Entonces
		Escribir "Felicitaciones Meta Superada, recibes un 10% de bonificacion";
		porcentajeBonificacion <- 10;
	FinSi
	
//	totalVentas <- cantVentas;
	totalVentas<- cantVentas*30000;
	gananciaBonificacion <- totalVentas * porcentajeBonificacion/100;
	gananciaTotal <- totalVentas + gananciaBonificacion;

	//salida
    Escribir "Usted tuvo ",cantVentas," ventas y su ganacia fue de ",gananciaTotal," COP";
	
FinAlgoritmo