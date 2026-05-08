import 'dart:io';

void main(List<String> args) {
  //Declaracion de variables
  int numero;

  //Entrada de datos
  print("Ingrese un numero");
  numero = int.parse(stdin.readLineSync()!);

  //Proceso y salida de datos
  if (numero % 5 == 0) {
    print("Su numero es divisible entre 5");
  } else {
    print("Su numero no es divisible entre 5");
  }
}
