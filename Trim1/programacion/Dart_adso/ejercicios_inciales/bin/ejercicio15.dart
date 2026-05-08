import 'dart:io';

void main(List<String> args) {
  //Declaracion de variables
  double temperaturaPaciente;

  //Entrada de datos
  print("Ingrese la temperatura del paciente en grados Celsius:");
  temperaturaPaciente = double.parse(stdin.readLineSync()!);

  //Proceso y salida de datos
  if (temperaturaPaciente > 38) {
    print("El paciente tiene fiebre.");
  } else {
    print("El paciente no tiene fiebre.");
  }

}