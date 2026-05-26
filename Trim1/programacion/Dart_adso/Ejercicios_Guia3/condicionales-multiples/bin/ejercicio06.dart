import 'dart:io';

void main(List<String> arguments) {
  //Desarrollar un algoritmo que lea el nombre del mes y el año e imprima en pantalla cuantos días tiene. Es necesario tener en cuenta si es año bisiesto o no.
  stdout.writeln("Ejercicio 6 - Condicionales Multiples");
  //Entrada
  String nombreMes;
  int anio;

  stdout.write("Ingrese el nombre del mes: ");
  nombreMes = stdin.readLineSync()!.toLowerCase();
  stdout.write("Ingrese el año: ");
  anio = int.parse(stdin.readLineSync()!);

  
  //proceso
  int dias;

  switch (nombreMes) {
    case "enero":
    case "marzo":
    case "mayo":
    case "julio":
    case "agosto":
    case "octubre":
    case "diciembre":
      dias = 31;
      break;
    case "abril":
    case "junio":
    case "septiembre":
    case "noviembre":
      dias = 30;
      break;
    case "febrero":
      if ((anio % 4 == 0 && anio % 100 != 0) || anio % 400 == 0) {
        dias = 29;
      } else {
        dias = 28;
      }
      break;
    default:
      stdout.writeln("Nombre de mes no válido.");
      return;
  }

  print("El mes de $nombreMes del año $anio tiene $dias días.");

}
