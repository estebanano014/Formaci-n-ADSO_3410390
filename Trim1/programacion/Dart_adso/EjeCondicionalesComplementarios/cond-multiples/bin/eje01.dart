import 'dart:io';

void main(List<String> arguments) {
  //Un concesionario vial necesita calcular la tarifa de un peaje. El costo base depende del tipo de vehículo: 1 (Moto), 2 (Automóvil), 3 (Bus), 4 (Camión/Tractomula). Sin embargo, para los buses y camiones, se debe cobrar un valor adicional por cada eje que tenga el vehículo. Solicite al usuario el tipo de vehículo y el número de ejes. Utilice un switch para determinar la tarifa. Las motos pagan tarifa plana de $5.000 y los autos $10.000. Los buses pagan $15.000 + $2.000 por cada eje. Los camiones pagan $20.000 + $5.000 por cada eje. Muestre el total a pagar.
  print('Concesionario vial');

  double tarifaPeaje, total;
  String tipoVehiculo;
  int cantidadEjes;

  print(
    "Ingrese el numero del tipo de vehiculo: 1 (Moto), 2 (Automóvil), 3 (Bus), 4 (Camión/Tractomula).",
  );
  tipoVehiculo = stdin.readLineSync()!.trim();

  switch (tipoVehiculo) {
    case "1":
      tarifaPeaje = 5000;
      total = tarifaPeaje;
      break;
    case "2":
      tarifaPeaje = 10000;
      total = tarifaPeaje;
      break;
    case "3":
      print("Ingrese el numero de ejes:");
      cantidadEjes = int.parse(stdin.readLineSync()!);

      tarifaPeaje = 15000 + (cantidadEjes * 2000);
      total = tarifaPeaje;

      total = tarifaPeaje;
      break;
    case "4":
      print("Ingrese el numero de ejes:");
      cantidadEjes = int.parse(stdin.readLineSync()!);

      tarifaPeaje = 20000 + (cantidadEjes * 5000);
      total = tarifaPeaje;
      break;
    default:
      print("Opcion no valida.");
      return;
  }
  print("El total a pagar es: \$$tarifaPeaje COP.");
}
