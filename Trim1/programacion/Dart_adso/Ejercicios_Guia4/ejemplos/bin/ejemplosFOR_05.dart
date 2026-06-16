import 'dart:io';

void main(List<String> arguments) {
  // Del total de aspirantes se desea saber cuántos son hombres
  // y cuántas mujeres son mayores de edad.

  int totalAspirantes, mujeres = 0, hombres = 0, edad;
  int genero;

  print("Ingrese la cantidad de aspirantes:");
  totalAspirantes = int.parse(stdin.readLineSync()!);

  for (var aspirantes = 0; aspirantes < totalAspirantes; aspirantes++) {
    print("Aspirante ${aspirantes + 1}");
    print("Ingrese su género (1: Masculino, 2: Femenino):");
    genero = int.parse(stdin.readLineSync()!);

    print("Ingrese su edad:");
    edad = int.parse(stdin.readLineSync()!);

    if (genero == 1) {
      hombres++;
    } else if (genero == 2 && edad >= 18) {
      mujeres++;
    }
  }

  print("\nResultados:");
  print("Cantidad de hombres: $hombres");
  print("Cantidad de mujeres mayores de edad: $mujeres");
}