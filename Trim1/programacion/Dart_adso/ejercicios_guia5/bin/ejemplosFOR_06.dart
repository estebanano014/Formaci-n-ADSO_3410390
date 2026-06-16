import 'dart:io';
void main(List<String> arguments) {
  print('Hello world!');
  //Variables tipo acumulador se desea registrar los puntos que se ganan en cad a partido,
  // teniendo en cuenta que el maximo puntaje es 10 por partido.
  // Mostrar al final el total de puntos acumulados y el promedio de puntos.

  int puntos, puntosAcumulados = 0; // Variable acumulador
  double promedio;
  int totalPartidos;

  print("Ingrese la cantidad de partidos:");
  totalPartidos = int.parse(stdin.readLineSync()!);

  for(var i = 1; i <= totalPartidos; i++) {
    print("Cual fue el puntaje del partido $i");
    puntos = int.parse(stdin.readLineSync()!);
    puntosAcumulados += puntos; // Acumulando los puntos
  }
  promedio = puntosAcumulados / totalPartidos;
  print("Total de puntos acumulados: $puntosAcumulados");
  print("Promedio de puntos: $promedio");
}
