import 'dart:io';

void main(List<String> args) {
  //Declarar variables
  double metros, centimetros, milimetros;

  //Entrada de datos
  print("Ingrese el numero de metros para convertirlo en centimetros y milimetros:");
  metros = double.parse(stdin.readLineSync()!);

  //Proceso 
  centimetros = metros/100;
  milimetros = metros/1000;

  //Salida de datos
  print("Centimetros: $centimetros");
  print("Milimetros: $milimetros");
}