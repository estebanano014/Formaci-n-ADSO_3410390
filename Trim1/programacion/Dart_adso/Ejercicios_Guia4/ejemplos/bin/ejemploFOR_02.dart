import 'dart:io';

void main(List<String> arguments) {
  double numero;
  int valorFinal;
  String entradaDatos;
  double suma=0; //Variable de tipo acumulador
  for (var i = 0; i < valorFinal; i++) {
    print("Ingrese el número:");
    numero = double.parse(stdin.readLineSync()!);
    suma += numero;
  }
  print("La suma de los números ingresados es: $suma");
  //Calcular el promedio de los numeros ingresados
  double promedio = suma / valorFinal;
  print("El promedio de los números ingresados es: $promedio");
  //Calcular el numero mayor y menor de los numeros ingresados
  double numeroMayor = double.negativeInfinity;
  double numeroMenor = double.infinity;
  for (var i = 0; i < valorFinal; i++) {
    print("Ingrese el número:");
    numero = double.parse(stdin.readLineSync()!);
    if (numero > numeroMayor) {
      numeroMayor = numero;
    }
    if (numero < numeroMenor) {
      numeroMenor = numero;
    }
  }
  print("El número mayor ingresado es: $numeroMayor");
  print("El número menor ingresado es: $numeroMenor");
}