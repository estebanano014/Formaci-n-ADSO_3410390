import 'dart:io';

void main(List<String> args) {
  //Declaracion de variables
  double base, altura, perimetro, area;

  //Entrada de datos
  print("Ingrese la base y la altura del triangulo para calcular su perimetro y area");
  base = double.parse(stdin.readLineSync()!);
  altura = double.parse(stdin.readLineSync()!);

  //Proceso
  perimetro= base + (2 * altura);
  area = (base * altura) / 2;

  //Salida de datos
  print("El perimetro del triangulo es de: $perimetro");
  print("El area del triangulo es de: $area");
}