Algoritmo punto12
	// Esteban Quiceno Duque 
    
    //Definición de variables 
    Definir nomPersona Como Cadena;
    Definir valorHora Como Real;
    Definir horasTrabajadas Como Real;
    Definir totalPago Como Real;
	
	//Asignacion variable
    valorHora <- 7000;
	
	//Entrada algoritmo 
    Escribir "Ingrese su nombre:";
    Leer nomPersona;
	
    Escribir "Ingrese la cantidad de horas que trabajo:";
    Leer horasTrabajadas;
	
	//Proceso Algoritmo 
    totalPago <- horasTrabajadas * valorHora;
	
	//Salida Algoritmo 
    Escribir nomPersona, "su pago será de: ", totalPago, " COP";
FinAlgoritmo