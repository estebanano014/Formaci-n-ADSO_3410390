import 'dart:io';

void main(List<String> args) {
  //declarar variables
  double ladoCubo, volumenCubo;

  //entrada de datos
  print("Ingrese el lado del cubo para culacular su volumen");
  ladoCubo = double.parse(stdin.readLineSync()!);

  //Proceso
  volumenCubo = ladoCubo * ladoCubo * ladoCubo;

  //Salida de datos
  print("El volumen del cubo es: $volumenCubo");

}