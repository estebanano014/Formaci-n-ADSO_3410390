import 'dart:io';

void main(List<String> args) {
  //Declaracion de variables
  String nomEmpleado;
  double valorDia;
  int numDiasTrabajados;
  double salarioMensual;

  //Entrada de datos
  print("Ingrese su nombre: ");
  nomEmpleado = (stdin.readLineSync()!);
  print("Ingrese el valor del dia trabajado: ");
  valorDia = double.parse(stdin.readLineSync()!);
  print("Ingrese el numero de dias que trabajo: ");
  numDiasTrabajados = int.parse(stdin.readLineSync()!);

  //Proceso
  salarioMensual = valorDia * numDiasTrabajados;

  //Salida de datos
  print("Señor@ $nomEmpleado su salario este mes sera de $salarioMensual COP");
}