import 'dart:io';

void main(List<String> arguments) {
  print("Una finca de café orgánico en Supía");

  double kilosRecolectados,
      precioKilo,
      nivelImpureza,
      pagoBase,
      pagoFinal,
      bono;

  stdout.write("Ingrese la cantidad de kilos recolectados: ");
  kilosRecolectados = double.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el precio por kilo: ");
  precioKilo = double.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el nivel de impureza (EJ: 5.2): ");
  nivelImpureza = double.parse(stdin.readLineSync()!);

  pagoBase = kilosRecolectados * precioKilo;
  bono = 0;

  //Solamente es verdadero si ambas condiciones son verdaderas, es decir, si se recolectaron más de 50 kilos y el nivel de impureza es menor a 5.
  if (kilosRecolectados > 50 && nivelImpureza < 5) {
    bono = pagoBase * 0.10;
  }
  pagoFinal = pagoBase + bono;
  print("El pago final es: $pagoFinal");
}
