import 'dart:io';

void main(List<String> args) {
  //Declaracion de variables
  String estacion;
  int num1 = 1;
  int num2 = 2; 
  int num3 = 3; 
  int num4 = 4; 

  //Entrada de datos
  print("Ingrese un numero del 1 al 4 para mostrar la estacion del año correspondiente.");
  num1 = int.parse(stdin.readLineSync()!);

  //Proceso y salida de datos
  if (num1 == 1) {
    estacion = "Verano";
    print("La estacion del año correspondiente es: $estacion");
  } else if (num2 == 2) {
    estacion = "Otoño";
    print("La estacion del año correspondiente es: $estacion");
  } else if (num3 == 3) {
    estacion = "Invierno";
    print("La estacion del año correspondiente es: $estacion");
  } else if (num4 == 4) {
    estacion = "Primavera";
    print("La estacion del año correspondiente es: $estacion");
  } else {
    print("El numero ingresado no es valido.");
  }
}