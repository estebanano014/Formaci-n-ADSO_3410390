import 'dart:io';

void main(List<String> arguments) {
  //Un obrero necesita calcular su salario semanal, el cual se obtiene de la sig. manera: • Si trabaja 40 horas o menos se le paga $16 por hora • Si trabaja más de 40 horas se le paga $16 por cada una de las primeras 40 horas y $20 por cada hora extra.
  stdout.writeln("Ejercicio 2 - Condicionales Dobles");

  //Entrada
  double horasTrabajadas, salario, horasExtra;
  stdout.write("Ingrese el número de horas trabajadas: ");
  horasTrabajadas = double.parse(stdin.readLineSync()!);

  horasExtra = (horasTrabajadas - 40) * 20;

  //Proceso
  if (horasTrabajadas <= 40) {
    salario = horasTrabajadas * 16;
    print("El salario semanal es: \$$salario");
  } else {
    salario = 40 * 16 + horasExtra;
    print("El salario semanal es: \$$salario");
  }
}
