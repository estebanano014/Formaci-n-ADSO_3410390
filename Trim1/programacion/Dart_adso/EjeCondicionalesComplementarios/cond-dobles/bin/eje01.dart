import 'dart:io';

void main(List<String> arguments) {
  //En una finca de café orgánico  se está planificando la fertilización de los cafetos utilizando Silicorrector. La dosis depende directamente del nivel de acidez del suelo (pH). Solicite al usuario la cantidad de árboles a fertilizar y el nivel de pH del suelo. Si el pH es menor a 5.5 (suelo ácido), se requiere una "Dosis de choque" de 200 gramos por árbol. Si el pH es 5.5 o mayor, el suelo está balanceado y solo requiere una "Dosis de mantenimiento" de 50 gramos por árbol. Calcule y muestre la cantidad total de abono (en gramos y kilogramos) que se debe preparar para el lote.
  print('Finca cafetera');

  int cantidadArboles;
  double nivelPH, dosisPorArbol, totalGramos, totalKilos;

  stdout.write('Ingrese la cantidad de árboles a fertilizar: ');
  cantidadArboles = int.parse(stdin.readLineSync()!);

  stdout.write('Ingrese el nivel de pH del suelo: ');
  nivelPH = double.parse(stdin.readLineSync()!);

  if (nivelPH < 5.5) {
    print('El suelo es ácido, se requiere una dosis de choque de 200 gramos por árbol.');
    dosisPorArbol = 200;
  } else {
    print('El suelo está balanceado, se requiere una dosis de mantenimiento de 50 gramos por árbol.');
    dosisPorArbol = 50;
  }

  totalGramos = cantidadArboles * dosisPorArbol;
  totalKilos = totalGramos / 1000;

  print('La cantidad total de abono que se debe preparar es:');
  print('$totalGramos gramos o $totalKilos kilogramos.');
}
