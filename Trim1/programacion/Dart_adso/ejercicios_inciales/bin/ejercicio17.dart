import 'dart:io';

void main(List<String> args) {
  //Declaracion de variables
  int num1, num2, num3;

  //Entrada de datos
  print("Ingrese tres numeros para mostrar el menor de los tres.");
  num1 = int.parse(stdin.readLineSync()!);
  num2 = int.parse(stdin.readLineSync()!);
  num3 = int.parse(stdin.readLineSync()!);

  //Proceso y salida de datos
  if (num1 < num2 && num1 < num3) {
    print("El menor de los tres numeros es: $num1");
  } else if (num2 < num1 && num2 < num3) {
    print("El menor de los tres numeros es: $num2");
  } else {
    print("El menor de los tres numeros es: $num3");
  }
}
