import 'dart:io';

void main(List<String> args) {
  print("Ingrese una calificación alfabética (A, B, C, D): ");
  String? calificacion = (stdin.readLineSync()!);

  switch (calificacion) {
    case "A":
      print("Equivalente numérico: 5 - Descripción: Excelente");
      break;
    case "B":
      print("Equivalente numérico: 4 - Descripción: Bueno");
      break;
    case "C":
      print("Equivalente numérico: 3 - Descripción: Regular");
      break;
    case "D":
      print("Equivalente numérico: 2 - Descripción: Deficiente");
      break;
    default:
      print("Calificación no válida.");
  }
}
