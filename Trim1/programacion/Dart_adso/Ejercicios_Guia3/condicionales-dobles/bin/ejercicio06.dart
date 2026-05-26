import 'dart:io';

void main(List<String> arguments) {
  //El gobierno colombiano desea reforestar un bosque que mide determinado número de hectáreas. Si la superficie del terreno excede a 1 millón de metros cuadrados, entonces decidirá sembrar de la sig. manera: Porcentaje de la superficie del bosque Tipo de árbol 70% Pino 20% Roble 10% Cedro Si la superficie del terreno es menor o igual a un millón de metros cuadrados, entonces decidirá sembrar de la sig. manera: Porcentaje de la superficie del bosque Tipo de árbol 50% Pino 30% Roble 20% Cedro El gobierno desea saber el numero de pinos, robles y cedros que tendrá que sembrar en el bosque, si se sabe que en 10 metros cuadrados caben 8 pinos, en 15 metros cuadrados caben 15 robles y en 18 metros cuadrados caben 10 cedros. También se sabe que una hectárea equivale a 10 mil metros cuadrados.   stdout.writeln("Ejercicio 6 - Condicionales Dobles");
  //Entrada
  double superficieBosque, superficieEnMetrosCuadrados, cantidadPinos, cantidadRobles, cantidadCedros;

  stdout.write("Ingrese la superficie del bosque en hectáreas: ");
  superficieBosque = double.parse(stdin.readLineSync()!);

  superficieEnMetrosCuadrados = superficieBosque * 10000;
  //Proceso
  if (superficieEnMetrosCuadrados > 1000000) {  
    cantidadPinos = (superficieEnMetrosCuadrados * 0.70) / 10 * 8;
    cantidadRobles = (superficieEnMetrosCuadrados * 0.20) / 15 * 15;
    cantidadCedros = (superficieEnMetrosCuadrados * 0.10) / 18 * 10;

    print("El numero de pinos a sembrar es: $cantidadPinos");
    print("El numero de robles a sembrar es: $cantidadRobles");
    print("El numero de cedros a sembrar es: $cantidadCedros");
  } else {
    cantidadPinos = (superficieEnMetrosCuadrados * 0.50) / 10 * 8;
    cantidadRobles = (superficieEnMetrosCuadrados * 0.30) / 15 * 15;
    cantidadCedros = (superficieEnMetrosCuadrados * 0.20) / 18 * 10;

    print("El numero de pinos a sembrar es: $cantidadPinos");
    print("El numero de robles a sembrar es: $cantidadRobles");
    print("El numero de cedros a sembrar es: $cantidadCedros");
}
}
