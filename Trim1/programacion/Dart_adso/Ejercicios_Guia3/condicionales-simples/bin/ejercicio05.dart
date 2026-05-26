import 'dart:io';
void main(List<String> arguments) {
  //Calcular el total que una persona debe pagar en un almacén, si el precio de cada llanta es de $80000 si se compran menos de 5 llantas y de $70000 si se compran 5 o más.   */
stdout.writeln("Ejercicio 5 - Condicionales Simples");

int cantidadLlantas;
double precioTotal = 0;

  //Entrada
  stdout.write("Ingrese la cantidad de llantas a comprar: ");
  cantidadLlantas = int.parse(stdin.readLineSync()!);

  //Proceso
  if (cantidadLlantas >= 5) {
    precioTotal = cantidadLlantas * 70.000;
  }

  if (cantidadLlantas < 5) {
    precioTotal = cantidadLlantas * 80000;
  }

  //Salida
  print("El total a pagar por $cantidadLlantas llantas es de \$$precioTotal" );

}           