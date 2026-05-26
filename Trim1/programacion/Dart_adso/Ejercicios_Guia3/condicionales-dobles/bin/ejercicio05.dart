import 'dart:io';
void main(List<String> arguments) {
  // Un cliente ordena cierta cantidad de brochas de cerda y rodillos; las brochas de cerda tienen un 20% de descuento y los rodillos un 15% de descuento. Los datos que se tienen por cada tipo de artículo son: la cantidad pedida y el precio unitario. Además, si se paga de contado todo tiene un descuento del 7%. Elaborar un programa que calcule y muestre en pantalla el costo total de la orden, tanto para el pago de contado como para el caso de pago de crédito. Para el caso de pago de contado el usuario ingresa 1, para pago a crédito el usuario ingresa 2.
  stdout.writeln("Ejercicio 5- Condicionales Dobles");
  //Entrada
  int cantidadBrochas, cantidadRodillos, preferenciaDePago;
  double precioBrochas, precioRodillos, descuentoBrochas, descuentoRodillos, total, descuentoContado, pagoContado, pagoCredito;

  stdout.write("Ingrese la cantidad de brochas desea llevar: ");
  cantidadBrochas = int.parse(stdin.readLineSync()!);
  stdout.write("Ingrese la cantidad de rodillos desea llevar: ");
  cantidadRodillos = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el precio unitario de las brochas: ");
  precioBrochas = double.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el precio unitario de los rodillos: ");
  precioRodillos = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el numero 1 para pagar de contado o el numero 2 para pagar a credito: ");
  preferenciaDePago = int.parse(stdin.readLineSync()!);


  descuentoBrochas = precioBrochas * 0.20;
  precioBrochas = cantidadBrochas - descuentoBrochas; 

  descuentoRodillos = precioRodillos * 0.15;
  precioRodillos = cantidadRodillos - descuentoRodillos;

  total = precioRodillos + precioBrochas;

  //Proceso
  if (preferenciaDePago == 1){
    descuentoContado = total * 0.07;
    pagoContado = total - descuentoContado;

    print("Por pagar a contado usted tendra un descuento del 7%.");
    print("El total a pagar por comprar esta de cantidad de brochas $cantidadBrochas y esta cantidad de rodillos $cantidadRodillos Sera de \$$pagoContado");    
  } else { 
    if (preferenciaDePago == 2) {
      pagoCredito = total;
      print("Por pagar a credito usted no tendra ningun descuento. El total a pagar por comprar esta de cantidad de brochas $cantidadBrochas y esta cantidad de rodillos $cantidadRodillos Sera de \$$pagoCredito");
    }

  }
  }
