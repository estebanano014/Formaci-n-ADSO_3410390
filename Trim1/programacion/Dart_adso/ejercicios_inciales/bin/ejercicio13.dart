import 'dart:io';

void main(List<String> args) {
  //Declaracion de variables
  int edadPersona;

  //Ingreso de datos
  print("Ingrese su edad");
  edadPersona = int.parse(stdin.readLineSync()!);

  //Proceso y salida de datos
  if (edadPersona >= 18){
  print("Usted es mayor de edad.");
  }else {
  print("Usted es menor de edad.");
  }
}