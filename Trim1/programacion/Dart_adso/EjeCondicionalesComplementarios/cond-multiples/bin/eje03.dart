import 'dart:io';

void main(List<String> arguments) {
  //Una empresa de logística internacional requiere automatizar sus cotizaciones. Solicite el peso del paquete en kilogramos y el continente de destino (1: América del Norte, 2: Europa, 3: Asia). Cada destino tiene una tarifa diferente por kilogramo y, adicionalmente, un impuesto aduanero fijo. a. América del Norte: $15.000 / kg + $25.000 impuesto aduanero. b. Europa: $25.000 / kg + $40.000 impuesto aduanero. c. Asia: $35.000 / kg + $60.000 impuesto aduanero. Utilice un switch para asignar estos dos valores (tarifa por kilo e impuesto) en variables. Al final del programa, calcule el total a pagar y muéstrelo desglosado.
  print('Una empresa de logística internacional ');

  double pesoPaquete, tarifaPorKg, impuestoAduanero, total;
  int continente;

  print("Ingrese el peso del paquete en kilogramos:");
  pesoPaquete = double.parse(stdin.readLineSync()!);
  print("Ingrese el numero del continente de destino (1: América del Norte, 2: Europa, 3: Asia):");
  continente = int.parse(stdin.readLineSync()!);

  switch (continente) {
    case 1:
      tarifaPorKg = 15000;
      impuestoAduanero = 25000;
      break;
    case 2:
      tarifaPorKg = 25000;
      impuestoAduanero = 40000;
      break;
    case 3:
      tarifaPorKg = 35000;
      impuestoAduanero = 60000;
      break;
    default:
      print("Continente no válido.");
      return;
  }

  total = (pesoPaquete * tarifaPorKg) + impuestoAduanero;
  print("Desglose del costo:");
  print("Tarifa por kilogramo: \$$tarifaPorKg COP");
  print("Impuesto aduanero: \$$impuestoAduanero COP");
  print("Total a pagar: \$$total COP");
}
