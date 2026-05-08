import 'dart:io';

void main(List<String> args) {
  //Declaracion de variables
  int num1, num2, resultado1, resultado2;

  //Entrada de datos
  print("Ingrese dos numeros para restarle el menor al mayor.");
  num1 = int.parse(stdin.readLineSync()!);
  num2 = int.parse(stdin.readLineSync()!);

  //Proceso y salida de datos
  if (num1 > num2) {
    resultado1 = num1 - num2;
    print("El resultado de la resta es: $resultado1");
  }else {
    resultado2 = num2 - num1;
    print("El resultado de la resta es: $resultado2");
  }

}