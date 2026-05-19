import 'dart:io';
void main(List<String> arguments) {
  //En un supermercado se hace una promoción, mediante la cual el cliente obtiene un descuento dependiendo de un número que se escoge al azar. Si el numero escogido es menor que 74 el descuento es del 15% sobre el total de la compra, si es mayor o igual a 74 el descuento es del 20%. Obtener cuánto dinero se le descuenta.   */
stdout.writeln("Ejercicio 6 - Condicionales Simples");

int numeroAzar;
double totalCompra, descuento;

  //Entrada
  stdout.write("Ingrese el total de la compra: ");
  totalCompra = double.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el número escogido al azar: ");
  numeroAzar = int.parse(stdin.readLineSync()!);

  //Proceso
  descuento = totalCompra * 0.15;
  if (numeroAzar >= 74) {
    descuento = totalCompra * 0.20;
  }

  //Salida
  print("El descuento obtenido es de \$$descuento" );

}           
