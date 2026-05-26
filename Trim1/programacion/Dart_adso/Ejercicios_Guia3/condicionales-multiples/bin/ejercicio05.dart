import 'dart:io';

void main(List<String> arguments) {
  // El costo de las llamadas internacionales depende de la zona geográfica en la que se encuentre el país destino, y del número de minutos hablados. En la siguiente tabla se presenta el costo por minuto por zona. A cada uno se le ha asociado una clave. Clave Zona Precio 12 América del Norte 200 15 América Central 220 18 América del Sur 450 19 Europa 350 23 Asia 600 25 África 600 29 Oceanía 500 Construya la solución para calcular e imprimir el costo de una llamada dada la clave. critas a la jubilación por edad deben tener 60 años o mas y una antigüedad en su empleo de menos de 25 años. Las personas adscritas a la jubilación por antigüedad joven deben tener menos de 60 años y una antigüedad en su empleo de 25 años o más. Las personas adscritas a la jubilación por antigüedad adulta deben tener 60 años o mas y una antigüedad en su empleo de 25 años o mas. Determinar en que tipo de jubilación, quedara adscrita una persona.
  stdout.writeln("Ejercicio 5 - Condicionales Multiples");
  //Entrada
  int claveZona;
  double minutosHablados, costoLlamada;

  stdout.write("Ingrese la clave de la zona: ");
  claveZona = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el número de minutos hablados: ");
  minutosHablados = double.parse(stdin.readLineSync()!);

  //proceso
  switch(claveZona) {
    case 12:
      costoLlamada = minutosHablados * 200;
      break;
    case 15:
      costoLlamada = minutosHablados * 220;
      break;
    case 18:
      costoLlamada = minutosHablados * 450;
      break;
    case 19:
      costoLlamada = minutosHablados * 350;
      break;
    case 23:
      costoLlamada = minutosHablados * 600;
      break;
    case 25:
      costoLlamada = minutosHablados * 600;
      break;
    case 29:
      costoLlamada = minutosHablados * 500;
      break;
    default:
      stdout.writeln("Clave de zona inválida.");
      return;
  }

  print("El costo de la llamada es: $costoLlamada");
}
