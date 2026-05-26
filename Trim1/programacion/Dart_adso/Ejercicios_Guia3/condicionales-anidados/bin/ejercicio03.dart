import 'dart:io';

void main(List<String> arguments) {
  //En una fábrica de computadoras se planea ofrecer a los clientes un descuento que dependerá del número de computadoras que compre. Si las computadoras son menos de cinco se les dará un 10% de descuento sobre el total de la compra; si el número de computadoras es mayor o igual a cinco pero menos de diez se le otorga un 20% de descuento; y si son 10 o más se les da un 40% de descuento. El precio de cada computadora es de $1100000
  stdout.writeln("Ejercicio 3 - Condicionales Anidados");
  //Entrada
  int cantidadComputadoras;
  double descuento, pagoSinDescuento, totalPago;
  double valorComputadoras = 1100000; 

  stdout.write("Ingrese la cantidad de computadoras que desea comprar");
  cantidadComputadoras = int.parse(stdin.readLineSync()!);

  pagoSinDescuento = cantidadComputadoras * valorComputadoras;

  //proceso
  if (cantidadComputadoras < 5) {
    print("Usted tendra un descuento del 10% por comprar menos de 5 computadoras.");

    descuento = pagoSinDescuento * 0.10;
    totalPago = pagoSinDescuento -  descuento;

    print("El total a pagar por comprar $cantidadComputadoras sera de \$$totalPago COP.");

  } else if (cantidadComputadoras >=5 && cantidadComputadoras < 10){
    print("Usted tendra un descuento del 20% por comprar menos de 5 computadoras.");

    descuento = pagoSinDescuento * 0.20;
    totalPago = pagoSinDescuento -  descuento;

    print("El total a pagar por comprar $cantidadComputadoras sera de \$$totalPago COP.");
  } else if (cantidadComputadoras > 10) {
    print("Usted tendra un descuento del 40% por comprar menos de 5 computadoras.");

    descuento = pagoSinDescuento * 0.40;
    totalPago = pagoSinDescuento -  descuento;
  }
}
