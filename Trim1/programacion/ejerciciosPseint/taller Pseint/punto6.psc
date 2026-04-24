Algoritmo punto6
	// Esteban Quiceno Duque 
    
    //Definición de variables 
    Definir nomArticulo como Cadena;
    Definir valorUnitario como Real;
    Definir cantidadCompras como Entero;
    Definir totalPagar como Real;
    
	//Entrada algoritmo 
    Escribir "Ingrese el nombre del artículo, su valor y la cantidad que desea llevar.";
	Leer nomArticulo;
	Leer valorUnitario;
	Leer cantidadCompras;
	
	//Proceso Algoritmo 
	totalPagar <- valorUnitario * cantidadCompras;
	
	//Salida Algoritmo s
    Escribir "-Usted desea comprar un: ", nomArticulo;
    Escribir "-Su total a pagar es de: ", totalPagar, " COP";
FinAlgoritmo