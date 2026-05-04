Algoritmo punto29
    Definir monto, descuento, total Como Real;
	
    Escribir "Ingrese el monto:";
    Leer monto;
	
    Si monto > 100 Entonces
        descuento <- monto * 0.10;
    Sino
        descuento <- monto * 0.02;
    FinSi
	
    total <- monto - descuento;
	
    Escribir "El descuento es: ", descuento;
    Escribir "El total a pagar es: ", total;
FinAlgoritmo