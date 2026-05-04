Algoritmo punto28
    Definir horasTrabajadas como entero;
    Definir valorHora como real;
    Definir salarioTrabajador como real;
	
    Escribir "Ingrese el total de horas que trabajo";
    Leer horasTrabajadas;
	
    Escribir "Ingrese el valor de la hora de trabajo";
    Leer valorHora;
	
    Si (horasTrabajadas > 40) Entonces 
        salarioTrabajador <- (horasTrabajadas * valorHora) + 10000;
		
        Escribir " Usted trabajo más de 40 horas, tendrá 10.000 pesos más por trabajar horas extras.Su salario sera de", salarioTrabajador," COP";
		
    Sino
        salarioTrabajador <- horasTrabajadas * valorHora;
		
        Escribir "Su salario por trabajar estás horas ", horasTrabajadas, " h, será de ", salarioTrabajador," COP";
    FinSi
FinAlgoritmo