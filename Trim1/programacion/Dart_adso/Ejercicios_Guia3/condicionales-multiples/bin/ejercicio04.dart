import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  //Calcular el valor de f(x) según la expresión x ^ 2 Si x mod 4 = 0 x / 6 f(x) Si x mod 4 = 1 Raiz(x) Si x mod 4 = 2 X ^ 3 + 5 Si x mod 4 = 3
  stdout.writeln("Ejercicio 4 - Condicionales Multiples");
  //Entrada 
  int x;
  double resultado; 

  stdout.write("Ingrese el valor de x: ");
  x = int.parse(stdin.readLineSync()!); 

  //proceso
  switch (x % 4) {
    case 0:
      resultado = pow(x, 2).toDouble();
      print("Resultado: $resultado");
      break;
    case 1:
      resultado = x / 6;
      print("Resultado: $resultado");
      break;
    case 2:
      resultado = sqrt(x);
      print("Resultado: $resultado");
      break;
    case 3:
      resultado = pow(x, 3).toDouble() + 5;
      print("Resultado: $resultado");
      break;
    default:
      print("Residuo inválido");
  }
}