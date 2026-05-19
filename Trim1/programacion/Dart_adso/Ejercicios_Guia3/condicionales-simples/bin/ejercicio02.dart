import 'dart:io';
void main(List<String> arguments) {
  //La compañía de seguros de vida atlas se va a cambiar de domicilio y por lo tanto pone en venta su terreno pero no tiene una idea del valor del terreno, entonces solicita al departamento de sistemas que le desarrolle un algoritmo con la finalidad de que calcule e imprima el precio del terreno del cual se tiene los siguientes datos: largo, ancho y precio por metro cuadrado, si el terreno tiene más de 400 metros cuadrados se hace un descuento del 10%. */
stdout.writeln("Ejercicio 2 - Condicionales Simples");

double precioTerreno, largoTerreno, anchoTerreno, precioMetroCuadrado, metrosCuadrados, descuento;

  //Entrada
  stdout.write("Ingrese el largo del terreno: ");
  largoTerreno = double.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el ancho del terreno: ");
  anchoTerreno = double.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el precio de metro cuadrado del terreno: ");
  precioMetroCuadrado = double.parse(stdin.readLineSync()!);

  //proceso
  metrosCuadrados = largoTerreno * anchoTerreno;

  precioTerreno = precioMetroCuadrado * metrosCuadrados;
  descuento = 0;


  if (metrosCuadrados > 400) {
    descuento = 0.10;
  }
  precioTerreno = precioTerreno + descuento;

  //Salida
  print("El precio total del terreno sera de: \$$precioTerreno" );
  
}