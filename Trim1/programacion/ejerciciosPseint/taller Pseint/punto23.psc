Algoritmo punto23
			Definir num1, num2, num3 Como entero;
			
			Escribir "Ingrese el primer número:";  
			Leer num1;  
			
			Escribir "Ingrese el segundo número:";  
			Leer num2;  
			
			Escribir "Ingrese el tercer número:";  
			Leer num3;  
			
			Si (num1 > num2 Y num1 > num3) Entonces  
				Escribir "Los números oredenados de mayor a menor quedarían asi: ", num1,"-", num2,"-",num3;  
			Sino  
				Si (num2 > num1 Y num2 > num3) Entonces 
					Escribir "Los números oredenados de mayor a menor quedarían asi: ", num2,"-", num1,"-", num3;
				Sino
					Si (num3 > num1 Y Num3 >  num2) Entonces 
						Escribir "Los números oredenados de mayor a menor quedarían asi: ", num3,"-", num1,"-",num2;
					Finsi 
				FinSi
			FinSi
FinAlgoritmo