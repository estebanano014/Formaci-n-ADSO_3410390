Algoritmo punto19
	// Esteban Quiceno Duque 
    
    //Definición de variables 
    Definir num1, num2 Como Entero;
	
	//Entrada algoritmo 
    Escribir "Ingrese dos numeros:";
    Leer num1;
	Leer num2;
	
    Si num2 <> 0 Entonces
        Si num1 mod num2 = 0 Entonces
            Escribir num1, " es múltiplo de ", num2;
        Sino
            Escribir num1, " NO es múltiplo de ", num2;
        FinSi
    Sino
        Escribir "No se puede dividir entre 0";
    FinSi
FinAlgoritmo