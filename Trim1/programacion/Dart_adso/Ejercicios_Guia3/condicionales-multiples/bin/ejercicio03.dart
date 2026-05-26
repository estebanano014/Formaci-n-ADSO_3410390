import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  // Dados como datos dos variables de tipo entero, obtenga el resultado de la siguiente función: Val Num 100 * v 1 100^v 2 100/v 3 0 Cualquier número
  stdout.writeln("Ejercicio 3 - Condicionales Multiples");
  // Entrada
  int val, num;
  double operacion;

  stdout.write("Ingrese el valor de val: ");
  val = int.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el valor de num: ");
  num = int.parse(stdin.readLineSync()!);

  //proceso

  switch (val) {
    case 1:
      operacion = 100 * num.toDouble();
      print("El resultado de la función es: $operacion");
      break;
    case 2:
      operacion = pow(100, num).toDouble();
      print("El resultado de la función es: $operacion");
      break;
    case 3:
      if (num != 0) {
        operacion = 100 / num;
        print("El resultado de la función es: $operacion");
      } else {
        print("Error: No se puede dividir por cero.");
      }
      break;
    default:
      operacion = num.toDouble();
      print("El resultado de la función es: $operacion");
  }

}
