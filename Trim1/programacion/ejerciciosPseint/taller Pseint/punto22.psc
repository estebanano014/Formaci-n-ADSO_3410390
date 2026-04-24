Algoritmo punto22
	// Esteban Quiceno Duque 
    
    //Definición de variables 
    Definir num1, num2 Como entero;
	
	//Entrada algoritmo 
    Escribir "Ingrese el primer número:";
    Leer num1;
	
    Escribir "Ingrese el segundo número:";
    Leer num2;
	
	//Salida y proceso
    Si (num1 > num2) Entonces
        Escribir "Los números oredenados de mayor a menor quedarían asi: ", num1,"-", num2;
    Sino
		
        Escribir "Los números oredenados de mayor a menor quedarían asi: ", num2,"-", num1;
    FinSi
FinAlgoritmo