import 'dart:io';

void main(List<String> arguments) {
  //Dado el monto de una compra calcular el descuento considerado • Descuento es 20% si el monto es mayor a 20000 pesos. • Descuento es 10% si el monto es mayor a 10000 pesos y menor o igual a 20000 pesos. • no hay descuento si el monto es menor o igual a 10000 pesos.
  stdout.writeln("Ejercicio 2 - Condicionales Anidados");
  //Entrada
  double montoCompra, descuento, totalPago;
  stdout.write("Ingrese el monto de la compra: ");
  montoCompra = double.parse(stdin.readLineSync()!);
  //proceso
  if (montoCompra > 20000) {
    print(
"Usted tendra un descuento del 20% por tener una compra de mas de 20.000 COP.");
    descuento = montoCompra * 0.20;
    totalPago = montoCompra - descuento;

    print("El total a pagar sera de \$$totalPago COP.");
  } else if (montoCompra > 10000 && montoCompra <= 20000) {
    print("Usted tendra un descuento del 10% por tener una compra mayor a 10.000 COP Y menor o igual a 20.000 COP.");
    descuento = montoCompra * 0.10;
    totalPago = montoCompra - descuento;

    print("El total a pagar sera de \$$totalPago COP.");
  } else if (montoCompra <= 10000){
  print("Usted NO tendra un descuento por tener una compra de 10.000 COP o menor..");
  descuento = montoCompra * 0.10;
  totalPago = montoCompra - descuento;

  print("El total a pagar sera de \$$totalPago COP.");
  }
}
