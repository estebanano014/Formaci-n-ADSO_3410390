import 'dart:io';

void main(List<String> arguments) {
  //El jefe del departamento de construcción de la constructora Pagasa, desea que se le desarrolle un programa para sus empleados, el cual calcule el sueldo de un empleado, de tal manera que el sueldo se calculará de la siguiente manera: si el número de horas trabajadas es mayor a 40, el excedente de 40 hrs. se paga al doble de la cuota por hora, en caso de no ser mayor a 40 hrs. se paga la cuota normal por hora, si las horas exceden a 50 hrs. el excedente de 50 hrs. se paga al triple de la cuota por hora. Se pedirá el nombre del empleado, el número de horas trabajadas y la cuota por hora. mostrar en pantalla el nombre del empleado, el número de horas trabajadas y su sueldo.
  stdout.writeln("Ejercicio 8 - Condicionales Anidados");
  //Entrada
  String nombreEmpleado;
  int horasTrabajadas;
  double cuotaPorHora, sueldo;

  stdout.write("Ingrese el nombre del empleado: ");
  nombreEmpleado = stdin.readLineSync()!;
  stdout.write("Ingrese el número de horas trabajadas: ");
  horasTrabajadas = int.parse(stdin.readLineSync()!);
  stdout.write("Ingrese la cuota por hora: ");
  cuotaPorHora = double.parse(stdin.readLineSync()!);


  //proceso
  if (horasTrabajadas > 50) {
    print("El número de horas trabajadas excede las 50 horas, se pagará el excedente al triple de la cuota por hora.");
    sueldo = 40 * cuotaPorHora + 10 * cuotaPorHora * 2 + (horasTrabajadas - 50) * cuotaPorHora * 3;
    print("El sueldo del empleado $nombreEmpleado por trabajar $horasTrabajadas horas es: \$$sueldo");
  } else if (horasTrabajadas > 40) {
    print("El número de horas trabajadas excede las 40 horas, se pagará el excedente al doble de la cuota por hora.");
    sueldo = 40 * cuotaPorHora + (horasTrabajadas - 40) * cuotaPorHora * 2;
    print("El sueldo del empleado $nombreEmpleado por trabajar $horasTrabajadas horas es: \$$sueldo");
  } else {
    sueldo = horasTrabajadas * cuotaPorHora;
    print("El sueldo del empleado $nombreEmpleado por trabajar $horasTrabajadas horas es: \$$sueldo");
  }

}
