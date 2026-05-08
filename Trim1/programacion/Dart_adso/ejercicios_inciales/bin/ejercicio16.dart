import 'dart:io';

void main(List<String> args) {
  //Declaracion de variables
  double montoGym, descuento, totalPago;

  //Entrada de datos
  print("Ingrese el monto a pagar.");
  montoGym = double.parse(stdin.readLineSync()!);

  //Proceso y salida de datos
  if (montoGym >500000) {
    descuento = montoGym * 0.20;
    totalPago = montoGym - descuento;

    print("Usted tendra un descuento del 20% por haber pagado la anualidad completa del Gym, y tiene que pagar $totalPago COP.");
  }else {
    descuento = montoGym * 0.05;
    totalPago = montoGym - descuento;

    print("Usted tendra un descuento del 5 % y tiene que pagar $totalPago COP.");
  }
}