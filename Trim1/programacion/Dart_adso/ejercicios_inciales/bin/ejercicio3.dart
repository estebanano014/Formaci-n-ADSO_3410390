import 'dart:io';

void main(List<String> args) {
  //Declaracion de variables
  String nomConductor;
  double distanciaRecorrida, velocidadPromedio;
  int tiempoEmpleado;

  // Entrada de datos
  print("Ingrese el nombre del conductor: ");
  nomConductor = stdin.readLineSync()!;
  print("Ingrese la distancia recorrida en km: ");
  distanciaRecorrida = double.parse(stdin.readLineSync()!);
  print("Ingrese el tiempo empleado en horas: ");
  tiempoEmpleado = int.parse(stdin.readLineSync()!);

  //Proceso
  velocidadPromedio = distanciaRecorrida / tiempoEmpleado;

  //Salida de datos
  print("Señor@ $nomConductor, usted recorrio $distanciaRecorrida km,empleo $tiempoEmpleado horas y su velocidad promedio fue de $velocidadPromedio km/h");
}
