import 'dart:io';
void main(List<String> arguments) {
  // Hacer un algoritmo que calcule el total a pagar por la compra de camisas. Si se compran tres camisas o mas se aplica un descuento del 20%  sobre el total de la compra y si son menos de tres camisas un descuento del 10%
  stdout.writeln("Ejercicio 3 - Condicionales Dobles");
  //Entrada
  int cantidadCamisas;
  double valorCamisa, totalPago, descuento;

  stdout.write("Ingrese la cantidad de camisas a comprar: ");  
  cantidadCamisas = int.parse(stdin.readLineSync()!); 
  stdout.write("Ingrese el valor de la camisa: ");
  valorCamisa = double.parse(stdin.readLineSync()!);

  totalPago = valorCamisa * cantidadCamisas;
  //Proceso
  if(cantidadCamisas < 3) {
    descuento = totalPago * 0.10;
    totalPago = totalPago - descuento ;
    print("El total a pagar por haber comprado $cantidadCamisas sera de \$$totalPago COP.");
  } else {
    descuento = totalPago * 0.20;
    totalPago = totalPago * descuento;
    print("El total a pagar por haber comprado $cantidadCamisas sera de \$$totalPago COP.");
  }
}
