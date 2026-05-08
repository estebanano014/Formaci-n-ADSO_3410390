import 'dart:io';

void main(List<String> args) {
  // Declaración de variables
  int edadUsuario, edadFuturo;

  //Entrada de datos
  print("Ingrese su edad actual");
  edadUsuario = int.parse(stdin.readLineSync()!);
  //Proceso
  edadFuturo = edadUsuario + 24;

  //Salida de datos
  print("Su edad en el 2050 sera de $edadFuturo años");
}