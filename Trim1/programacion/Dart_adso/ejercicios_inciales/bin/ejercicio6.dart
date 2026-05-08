import 'dart:io';

void main(List<String> args) {
  //Declarar variables
  double precioProducto;
  double valorIva ;
  double precioTotal;

  //entrada de datos
  print("Ingrese el precio del producto");
  precioProducto = double.parse(stdin.readLineSync()!);
  print("Este producto tendra un impuesto de iva del 19%.");

  //Proceso
  valorIva = precioProducto * 0.19;
  precioTotal = precioProducto + valorIva;

  //Salida de datos
  print("El precio total a pagar es de: $precioTotal");
}