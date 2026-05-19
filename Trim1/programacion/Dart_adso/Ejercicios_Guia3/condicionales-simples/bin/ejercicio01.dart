import 'dart:io';
void main(List<String> arguments) {
  //El jefe del personal de operación de la industria aceitera Móvil desea calcular el sueldo neto de sus empleados bajo las siguientes normas, solicitar el nombre del empleado, número de horas trabajadas y la cuota por hora trabajada, para calcular el sueldo neto del empleado, se le otorga un incentivo del 5% si el empleado trabajó más de 40 horas. Imprimir el nombre del empleado y su sueldo. Desarrollar el algoritmo y diagrama de flujo. */
  stdout.writeln("Ejercicio 1 - Condicionales Simples");
  String nombre;
  double valorHora, horasTrabajadas, salarioNeto, bonificacion;

  //Entrada
  stdout.write("Ingrese el nombre del empleado: ");
  nombre = stdin.readLineSync()!;
  stdout.write("Ingrese las horas que usted trabajo: ");
  horasTrabajadas = double.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el valor de la hora: ");
  valorHora = double.parse(stdin.readLineSync()!);
  
  //proceso
  salarioNeto = horasTrabajadas*valorHora;
  bonificacion = 0; //Por defecto no hay incentivo

  if (horasTrabajadas >40){
    bonificacion = 0.05;
  }
  salarioNeto = salarioNeto + bonificacion;

  //salida 
  print("Señor@ $nombre su salario bruto por haber trabajado $horasTrabajadas horas sera de \$$salarioNeto COP.");

}
