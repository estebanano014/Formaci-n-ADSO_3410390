Algoritmo punto24
	// Esteban Quiceno Duque 
    
    //Definición de variables 
	Definir num Como real;
	
	//Entrada algoritmo 
	Escribir "Ingrese el número:";  
	Leer num;  
	
	//Salida y proceso
	Si (num <= 9) Entonces  
		Escribir "El numero es de una cifra: ", num;  
	Sino  
		Si (num <=99) Entonces 
			Escribir "El numero es de dos cifras: ", num;
		Sino
			Si (num <= 999) Entonces 
				Escribir "El numero es de tres cifras: ", num;
			SiNo
				si (num <= 9999) Entonces
					Escribir "El numero es de cuatro cifras: ", num;
				FinSi
			Finsi 
		FinSi
	FinSi
FinAlgoritmo