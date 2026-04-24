Algoritmo ejemplo5
	//Pedir la edad de una persona. En caso de ser mayor de edad pedir dos numeros y sumarlos 
	//de lo contrario realizar la formula: x^2+6*3
	
	Definir edadPersona Como Entero;
	Definir N1 Como Real;
	Definir N2 Como Real;
	Definir valx Como Real;
	Definir Resultado Como Real;
	
	Escribir "Ingrese su edad";
	Leer edadPersona;
	
	si edadPersona >= 18; Entonces
		Escribir "Ingrese dos numeros";
		Leer N1;
		Leer N2;
		
		Resultado<- N1 + N2;
		
		Escribir "La suma de los dos numeros es igual a: ",Resultado;
	SiNo
		Escribir "Ingrese el valor de x, para formula x^2+6*3";
		Leer valx;
		Resultado<- valx^2+6*3;
		Escribir "El resultado de la operacion x^2+6*3 es: ",Resultado;
	FinSi
	
	
FinAlgoritmo
