Algoritmo punto25
	// Esteban Quiceno Duque 
    
    //Definición de variables 
	Definir nota Como real;
	
	//Entrada algoritmo 
	Escribir "Ingrese una nota de 0 a 5.";  
	Leer nota;  
	
	//Salida y proceso
	Si (nota <= 2.9) Entonces  
		Escribir "La nota es insuficiente: ", nota;  
	Sino  
		Si (nota <= 4.5) Entonces 
			Escribir "La nota es suficiente: ", nota;
		Sino
			Si (nota <= 5) Entonces 
				Escribir "La nota es bien: ", nota;
			Finsi 
		FinSi
	FinSi
FinAlgoritmo