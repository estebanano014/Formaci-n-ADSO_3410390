import 'dart:io';

void main(List<String> args) {
  double abonoMensual = 0;
  double deudaInicial = 500000;
  int totalAbonos = 0;

  while (deudaInicial > 0) {
    print("Ingrese el valor del abono mensual #${totalAbonos + 1}");
    abonoMensual = double.parse(stdin.readLineSync()!);

    while (abonoMensual <= 0) {
      print("El abono debe ser mayor que cero");
      abonoMensual = double.parse(stdin.readLineSync()!);
    }

    while (abonoMensual > deudaInicial) {
      print("El abono supera la deuda pendiente ($deudaInicial)");
      abonoMensual = double.parse(stdin.readLineSync()!);
    }

    deudaInicial = deudaInicial - abonoMensual;
    totalAbonos++;

    print("Saldo pendiente: $deudaInicial");
  }

  print("Felicitaciones, su saldo ahora es de cero");
  print("Se necesitaron $totalAbonos abono(s)");
}