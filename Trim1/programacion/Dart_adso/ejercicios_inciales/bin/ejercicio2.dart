import 'dart:io';

void main(List<String> args) {
  //Declaracion de variables
  String nombreCiudad;
  double temperatura;

  //Entrada de datos
  print("Ingrese el nombre de la ciudad: ");
  nombreCiudad = stdin.readLineSync()!;
  print("Ingrese la temperatura de la ciudad en celsius: ");
  temperatura = double.parse(stdin.readLineSync()!);

  //Salida de datos
  print("La ciudad $nombreCiudad actualmente esta a $temperatura grados celsius");
}
