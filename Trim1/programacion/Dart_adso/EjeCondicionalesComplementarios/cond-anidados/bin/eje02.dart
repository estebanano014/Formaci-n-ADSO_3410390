import 'dart:io';

void main(List<String> arguments) {
  // Un concesionario está cotizando el nuevo Volkswagen Nivus 2026. Primero, el sistema pregunta el método de pago del cliente (ingrese "contado" o "credito"). a. Si el cliente paga de contado, el sistema anida una nueva condición: si el valor del vehículo supera los $110.000.000, se otorga un descuento del 5%. Si es menor o igual, se otorga un 2%. b. Si el cliente paga a crédito, el sistema anida una validación diferente: pregunta a cuántos meses es el plazo. Si el plazo es mayor a 60 meses, la tasa de interés mensual es del 1.5%. Si es de 60 meses o menos, la tasa es del 1.2%. Desarrolle el algoritmo que capture el precio base del vehículo y ejecute la lógica correspondiente para informar al cliente las condiciones finales.
  print('Volkswagen Nivus 2026');

  String metodoPago;
  double valorVehiculo, descuento, precioFinal, tasaInteres;
  int plazoMeses;

  stdout.write('Ingrese el método de pago (contado o credito): ');
  metodoPago = stdin.readLineSync()!.trim().toLowerCase();
  stdout.write('Ingrese el valor base del vehículo: ');
  valorVehiculo = double.parse(stdin.readLineSync()!);
  
  if (metodoPago == 'contado') {
    if (valorVehiculo > 110000000) {
      descuento = valorVehiculo * 0.05;
      print('Se otorga un descuento del 5% por pago de contado y valor superior a 110.000.000.');
    } else {
      descuento = valorVehiculo * 0.02;
      print('Se otorga un descuento del 2% por pago de contado y valor igual o inferior a 110.000.000.');
    }
    precioFinal = valorVehiculo - descuento;
    print('El precio final a pagar es: \$$precioFinal COP.');
  } else if (metodoPago == 'credito') {
    stdout.write('Ingrese el plazo en meses para el crédito: ');
    plazoMeses = int.parse(stdin.readLineSync()!);
    if (plazoMeses > 60) {
      tasaInteres = 0.015;
      print('La tasa de interés mensual es del 1.5% por un plazo mayor a 60 meses.');
    } else {
      tasaInteres = 0.012;
      print('La tasa de interés mensual es del 1.2% por un plazo de 60 meses o menos.');
    }
    double interesTotal = valorVehiculo * tasaInteres * plazoMeses;
    precioFinal = valorVehiculo + interesTotal;
    print('El precio final a pagar con crédito es: \$$precioFinal COP, incluyendo intereses de \$$interesTotal COP.');
  } else {
    print('Método de pago no reconocido. Por favor, ingrese "contado" o "credito".');
  } 


}
