import 'dart:io';

void main(List<String> arguments) {
  //Un propietario necesita calcular el impuesto anual de su vehículo. Las normativas f iscales establecen que los vehículos cuyo avalúo comercial supere los $150.000.000 (considerados de gama alta o lujo) deben pagar una tarifa del 2.5% sobre dicho valor. Por el contrario, los vehículos con un avalúo igual o menor a este límite pagan una tarifa del 1.5%. Solicite la marca/modelo del vehículo y su avalúo comercial actual. Determine cuál es el porcentaje aplicado y calcule el valor total del impuesto a pagar este año. 
  print('Impuesto anual de un vehículo');

  String marcaModelo;
  double avaluoComercial, porcentajeImpuesto, impuestoAnual;
  stdout.write('Ingrese la marca y modelo del vehículo: ');
  marcaModelo = stdin.readLineSync()!;
  stdout.write('Ingrese el avalúo comercial del vehículo: ');
  avaluoComercial = double.parse(stdin.readLineSync()!);

  if (avaluoComercial > 150000000) {
    porcentajeImpuesto = 0.025;
    print('El vehículo es de gama alta o lujo, se aplica una tarifa del 2.5%.');
  } else {
    porcentajeImpuesto = 0.015;
    print('El vehículo no es de gama alta, se aplica una tarifa del 1.5%.');
  }
  impuestoAnual = avaluoComercial * porcentajeImpuesto;
  print('El impuesto anual a pagar por el vehículo $marcaModelo es: \$$impuestoAnual COP.');
}
