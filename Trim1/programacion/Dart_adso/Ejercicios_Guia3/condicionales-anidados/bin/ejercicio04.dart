import 'dart:io';

void main(List<String> arguments) {
  //En un montallantas se ha establecido una promoción de las llantas marca “Ponchadas”, dicha promoción consiste en lo siguiente: Si se compran menos de cinco llantas el precio es de $90000 cada una, de $80000 si se compran de cinco a 10 y de $70000 si se compran más de 10. Obtener la cantidad de dinero que una persona tiene que pagar por cada una de las llantas que compra y la que tiene que pagar por el total de la compra
  stdout.writeln("Ejercicio 4 - Condicionales Anidados");
  //Entrada
  int cantidadLlantas;
  double precioUnitario, totalCompra;

  stdout.write("Ingrese la cantidad de llantas que desea comprar: ");
  cantidadLlantas = int.parse(stdin.readLineSync()!);

  //proceso
  if (cantidadLlantas < 5) {
    precioUnitario = 90000;
  } else if (cantidadLlantas >= 5 && cantidadLlantas <= 10) {
    precioUnitario = 80000;
  } else {
    precioUnitario = 70000;
  }

  totalCompra = cantidadLlantas * precioUnitario;

  //salida
  print("El precio unitario de cada llanta es: \$$precioUnitario");
  print("El total a pagar por la compra es: \$$totalCompra");
}
