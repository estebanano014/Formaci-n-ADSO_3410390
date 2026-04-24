Algoritmo ejemplo8
	//Esteban Quiceno Duque
	//Solicitar al usuario: nombre y valor del producto, se debe solicitar el porcentaje del descuento. Mostrar cuanto debe pagar y cual fue el descuento.
	
	//Definicion de variables
	Definir nombre Como cadena;
	Definir valorProd, descuento, totalPago Como Real;
	Definir porcentajeDescuento Como entero;
	
	//entrada
	Escribir "Ingrese el nombre del producto";
	Leer nombre;
	
	Escribir "Ingrese el valor del producto";
	Leer valorProd;
	
	Escribir "Ingrese el procentaje de descuento que tendra el producto";
	Leer porcentajeDescuento;
	
	
	//Proceso
	descuento <- (valorProd * porcentajeDescuento)/100;
	totalPago <- valorProd - descuento;
	
	//salida
	Escribir "El producto ",nombre," tuvo un valor de descuento de ",descuento," COP y debe pagar ", totalPago," COP.", " y es equivalente al ",porcentajeDescuento,"%";
FinAlgoritmo
