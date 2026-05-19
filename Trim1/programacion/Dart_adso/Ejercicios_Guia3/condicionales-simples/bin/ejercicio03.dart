import 'dart:io';
void main(List<String> arguments) {
  //El jefe de un almacén de ropa, pone una promoción en sus trajes por un período de tres días para sus clientes, de tal manera que si un cliente ordena un traje se captura el modelo del traje y el precio unitario. Si el cliente ordena tres o más trajes se le hace un descuento del 17%, si no se le cobra al precio normal.  */
stdout.writeln("Ejercicio 3 - Condicionales Simples");

String modelo;
double precioUnitario, cantidadOrden, descuento;

  //Entrada
  stdout.write("Ingrese el modelo del traje: ");
  modelo = stdin.readLineSync()!;
  stdout.write("Ingrese el precio unitario del traje: ");
  precioUnitario = double.parse(stdin.readLineSync()!);
  stdout.write("Ingrese la cantidad de trajes ordenados: ");
  cantidadOrden = double.parse(stdin.readLineSync()!);

  //Proceso
  precioUnitario = precioUnitario * cantidadOrden;
  descuento = 0;

  if (cantidadOrden >= 3) {
    descuento = precioUnitario * 0.17;
  }
  precioUnitario = precioUnitario - descuento;
  
  //Salida
  print("El total a pagar es de: \$$precioUnitario" );
}
