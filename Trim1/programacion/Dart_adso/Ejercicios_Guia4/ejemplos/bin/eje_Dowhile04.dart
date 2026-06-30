/*Genere un menu que permita las siguientes operaciones: suma, resta, multiplicacion y division.
Se debe contar con una opcion para salir.*/

import 'dart:io';

void main(List<String> args) {
  int opcion;
  double num1, num2;

  do {
    print("Menu calculadora");
    print("1. Suma");
    print("2. Resta");
    print("3. Multiplicacion");
    print("4. Division");
    print("5. Salir");
    print("------------------------- ");
    print("Ingrese la opcion deseada");
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        print("Ingrese el valor del numero 1 a sumar");
        num1 = double.parse(stdin.readLineSync()!);
        print("Ingrese el valor del numero 2 a sumar");
        num2 = double.parse(stdin.readLineSync()!);
        double suma = num1 + num2;
        print("El valor de la suma es $suma");
        break;

      case 2:
        print("Ingrese el valor del numero 1 a restar");
        num1 = double.parse(stdin.readLineSync()!);
        print("Ingrese el valor del numero 2 a restar");
        num2 = double.parse(stdin.readLineSync()!);
        double resta = num1 - num2;
        print("El valor de la resta es $resta");
        break;

      case 3:
        print("Ingrese el valor del numero 1 para multiplicar");
        num1 = double.parse(stdin.readLineSync()!);
        print("Ingrese el valor del numero 2 para multiplicar");
        num2 = double.parse(stdin.readLineSync()!);
        double multiplicacion = num1 * num2;
        print("El valor de la multiplicacion es $multiplicacion");
        break;

      case 4:
        print("Ingrese el valor del numero 1 para dividir");
        num1 = double.parse(stdin.readLineSync()!);
        print("Ingrese el valor del numero 2 para dividir");
        num2 = double.parse(stdin.readLineSync()!);
        if (num2 == 0) {
          print("No se puede dividir entre cero");
        } else {
          double division = num1 / num2;
          print("El valor de la division es $division");
        }
        break;

      case 5:
        print("Saliendo del programa...");
        break;

      default:
        print("Opcion invalida");
        break;
    }
  } while (opcion != 5);
}
