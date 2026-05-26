import 'dart:io';

void main(List<String> arguments) {
  // Ejercicio 10 - Condicionales Anidados
  stdout.writeln("Ejercicio 10 - Condicionales Anidados");

  // Entrada
  String nombrePersona;
  String sexoPersona;
  String unidadEdad;
  double edadPersona;
  double nivelHemoglobina;

  stdout.write("Ingrese el nombre de la persona: ");
  nombrePersona = stdin.readLineSync()!;

  stdout.write("Ingrese el sexo de la persona (M/F): ");
  sexoPersona = stdin.readLineSync()!;

  stdout.write("Ingrese la unidad de edad (M para meses, A para años): ");
  unidadEdad = stdin.readLineSync()!.toUpperCase();

  stdout.write("Ingrese la edad de la persona: ");
  edadPersona = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el nivel de hemoglobina de la persona (en g%): ");
  nivelHemoglobina = double.parse(stdin.readLineSync()!);

  // proceso
  if (unidadEdad == 'M' && edadPersona >= 0 && edadPersona <= 1) {
    if (nivelHemoglobina < 13) {
      print("El resultado para la persona $nombrePersona es: Anemia");
    } else if (nivelHemoglobina > 26) {
      print("El resultado para la persona $nombrePersona es: Cardiopatía");
    } else {
      print("El resultado para la persona $nombrePersona es: Normal");
    }
  } else if (unidadEdad == 'M' && edadPersona > 1 && edadPersona <= 6) {
    if (nivelHemoglobina < 10) {
      print("El resultado para la persona $nombrePersona es: Anemia");
    } else if (nivelHemoglobina > 18) {
      print("El resultado para la persona $nombrePersona es: Cardiopatía");
    } else {
      print("El resultado para la persona $nombrePersona es: Normal");
    }
  } else if (unidadEdad == 'M' && edadPersona > 6 && edadPersona <= 12) {
    if (nivelHemoglobina < 11) {
      print("El resultado para la persona $nombrePersona es: Anemia");
    } else if (nivelHemoglobina > 15) {
      print("El resultado para la persona $nombrePersona es: Cardiopatía");
    } else {
      print("El resultado para la persona $nombrePersona es: Normal");
    }
  } else if (unidadEdad == 'A' && edadPersona > 1 && edadPersona <= 5) {
    if (nivelHemoglobina < 11.5) {
      print("El resultado para la persona $nombrePersona es: Anemia");
    } else if (nivelHemoglobina > 15) {
      print("El resultado para la persona $nombrePersona es: Cardiopatía");
    } else {
      print("El resultado para la persona $nombrePersona es: Normal");
    }
  } else if (unidadEdad == 'A' && edadPersona > 5 && edadPersona <= 10) {
    if (nivelHemoglobina < 12.6) {
      print("El resultado para la persona $nombrePersona es: Anemia");
    } else if (nivelHemoglobina > 15.5) {
      print("El resultado para la persona $nombrePersona es: Cardiopatía");
    } else {
      print("El resultado para la persona $nombrePersona es: Normal");
    }
  } else if (unidadEdad == 'A' && edadPersona > 10 && edadPersona <= 15) {
    if (nivelHemoglobina < 13) {
      print("El resultado para la persona $nombrePersona es: Anemia");
    } else if (nivelHemoglobina > 15.5) {
      print("El resultado para la persona $nombrePersona es: Cardiopatía");
    } else {
      print("El resultado para la persona $nombrePersona es: Normal");
    }
  } else if (unidadEdad == 'A' && edadPersona > 15 && (sexoPersona == 'F' || sexoPersona == 'f')) {
    if (nivelHemoglobina < 12) {
      print("El resultado para la persona $nombrePersona es: Anemia");
    } else if (nivelHemoglobina > 16) {
      print("El resultado para la persona $nombrePersona es: Cardiopatía");
    } else {
      print("El resultado para la persona $nombrePersona es: Normal");
    }
  } else if (unidadEdad == 'A' && edadPersona > 15 && (sexoPersona == 'M' || sexoPersona == 'm')) {
    if (nivelHemoglobina < 14) {
      print("El resultado para la persona $nombrePersona es: Anemia");
    } else if (nivelHemoglobina > 18) {
      print("El resultado para la persona $nombrePersona es: Cardiopatía");
    } else {
      print("El resultado para la persona $nombrePersona es: Normal");
    }
  } else {
    print("Datos inválidos: edad o unidad no corresponden a los rangos esperados.");
  }
}
