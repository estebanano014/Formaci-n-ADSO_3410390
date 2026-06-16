import 'dart:io';

void main(List<String> arguments) {
  //En una conferencia en el milton se requieren saber cuantos aprendices hay ADSO, cuantos de
  // Automotriz y cuantos de Mecanizado,se debe solicitar al usuario la cantidad total de aprendices. 

  int cantAprendices, cantADSO = 0, cantAutomotriz = 0, cantMecanizado = 0;
  int carrera;

  print("Ingrese la cantidad total de aprendices: ");
  cantAprendices = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < cantAprendices; i++) {
    print("Aprendiz ${i + 1} - Ingrese su carrera (1: ADSO, 2: Automotriz, 3: Mecanizado):");
    carrera = int.parse(stdin.readLineSync()!);
    
    if (carrera == 1) {
      cantADSO++;
    } else if (carrera == 2) {
      cantAutomotriz++;
    } else if (carrera == 3) {
      cantMecanizado++;
    }
  }

  print("\n--- Resultado ---");
  print("Aprendices de ADSO: $cantADSO");
  print("Aprendices de Automotriz: $cantAutomotriz");
  print("Aprendices de Mecanizado: $cantMecanizado");
}
