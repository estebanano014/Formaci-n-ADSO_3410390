import 'dart:io';
void main(List<String> arguments) {
  //Hacer un algoritmo que imprima el nombre de un artículo, clave, precio original y su precio con descuento. El descuento lo hace en base a la clave, si la clave es 1 el descuento es del 10% y si la clave es 2 el descuento en del 20% (solo existen dos claves).  */
stdout.writeln("Ejercicio 4 - Condicionales Simples");

String nombreArticulo, clave;
double precioOriginal, precioConDescuento;

  //Entrada
  stdout.write("Ingrese el nombre del artículo: ");
  nombreArticulo = stdin.readLineSync()!;
  stdout.write("Ingrese la clave del artículo: ");
  clave = stdin.readLineSync()!;
  stdout.write("Ingrese el precio original del artículo: ");
  precioOriginal = double.parse(stdin.readLineSync()!); 

  //Proceso
  precioConDescuento = 0;

  if (clave == "1") {
    precioConDescuento = precioOriginal - (precioOriginal * 0.10);
  }
  if (clave == "2") {
    precioConDescuento = precioOriginal - (precioOriginal * 0.20);
  }

  //Salida
  print("El artículo $nombreArticulo con clave $clave tiene un precio original de \$$precioOriginal y un precio con descuento de \$$precioConDescuento" );

}