Algoritmo ejemplo9
	//Esteban Quiceno Duque
	//Alerta saldo bajo
	
	//Definicion de variables
	Definir saldo Como Real;
	Definir recarga Como Real;
	
//    asignacion de variable
	recarga <- 0;
	
	Escribir "ingrese el valor de su saldo";
	Leer saldo;
	
	//proceso
	si (saldo < 20000) Entonces
		Escribir "su saldo es critico, se le realizara una recarga automatica";
		recarga <- 100000;
	FinSi
	
	saldo <- saldo+recarga;
	//salida
	Escribir "Su saldo es de :",saldo;
	
FinAlgoritmo
