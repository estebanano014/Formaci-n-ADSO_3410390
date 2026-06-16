import 'dart:io';

void main(List<String> arguments) {
  print("¿Cuántos números desea ingresar?");
  int valorFinal = int.parse(stdin.readLineSync()!);

  double suma = 0;
  double numeroMayor = double.negativeInfinity;
  double numeroMenor = double.infinity;

  for (int i = 0; i < valorFinal; i++) {
    print("Ingrese el número ${i + 1}:");
    double numero = double.parse(stdin.readLineSync()!);

    suma += numero;

    if (numero > numeroMayor) {
      numeroMayor = numero;
    }

    if (numero < numeroMenor) {
      numeroMenor = numero;
    }
  }

  double promedio = suma / valorFinal;

  print("\nResultados:");
  print("La suma de los números ingresados es: $suma");
  print("El promedio de los números ingresados es: $promedio");
  print("El número mayor ingresado es: $numeroMayor");
  print("El número menor ingresado es: $numeroMenor");
}