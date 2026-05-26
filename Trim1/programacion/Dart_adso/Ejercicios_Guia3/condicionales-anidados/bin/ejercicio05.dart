import 'dart:io';

void main(List<String> arguments) {
  //Una frutería ofrece las manzanas con descuento según la siguiente tabla: NUM. DE KILOS COMPRADOS % DESCUENTO 0 - 2 0 2.01 - 5 10 5.01 - 10 15 10.01 en adelante 20 Determinar cuanto pagara una persona que compre manzanas es esa frutería sabiendo que el kilo vale $1300
  stdout.writeln("Ejercicio 5 - Condicionales Anidados");
  //Entrada
  double pesoManzana, descuento, precioSinDescuento, montoDescuento, totalPago;
  double precioKilogramo = 1300;

  stdout.write("Ingrese el peso de manzanas que desea comprar (en kilos): ");
  pesoManzana = double.parse(stdin.readLineSync()!);

  descuento = 0; 

  //proceso
  if (pesoManzana >= 0 && pesoManzana <= 2) {
    descuento = 0;
  } else if (pesoManzana > 2 && pesoManzana <= 5) {
    descuento = 0.10;
  } else if (pesoManzana > 5 && pesoManzana <= 10) {
    descuento = 0.15;
  } else if (pesoManzana > 10) {
    descuento = 0.20;
  }

  precioSinDescuento = pesoManzana * precioKilogramo;
  montoDescuento = precioSinDescuento * descuento;
  totalPago = precioSinDescuento - montoDescuento;  

  //salida
  print("El precio sin descuento es: \$$precioSinDescuento");
  print("El monto del descuento es: \$$montoDescuento");
  print("El total a pagar por la compra de manzanas es: \$$totalPago");
}
