Algoritmo punto10
	// Esteban Quiceno Duque 
    
    //Definición de variables 
    Definir altoRectangulo como Real;
    Definir anchoRectangulo como Real; 
    Definir areaRectangulo como Real;
    Definir perimetroRectangulo Como Real;
    
	//Entrada algoritmo 
    Escribir "Ingrese el alto del rectángulo:";
    Leer altoRectangulo;
	
    Escribir "Ingrese el ancho del rectángulo:";
    Leer anchoRectangulo;
    
	//Proceso Algoritmo 
    areaRectangulo <- altoRectangulo * anchoRectangulo;
	
    perimetroRectangulo <- 2 * (altoRectangulo + anchoRectangulo);
    
	//Salida Algoritmo 
    Escribir "El área del rectángulo equivale a: ", areaRectangulo;
    Escribir "El perímetro del rectángulo equivale a: ", perimetroRectangulo;
FinAlgoritmo