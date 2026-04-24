Algoritmo ejemplo7
	//Esteban Quiceno Duque
	//´porcentaje de producto
	
	//Definicion de variables
	Definir nombre Como cadena;
	Definir valorProd, descuento, valorFinal Como Real;

	//entrada
	Escribir "Ingrese el nombre del producto";
	Leer nombre;
	
	Escribir "Ingrese el valor del producto";
	Leer valorProd;
	
	//Proceso
	descuento <- valorProd * 25/100;
	valorFinal <- valorProd - descuento;
	
	//salida
	Escribir "El producto ",nombre," tuvo un descuento de ",descuento," COP y su valor total es de ", valorFinal," COP.";
FinAlgoritmo
