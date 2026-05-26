import 'dart:io';

void main(List<String> arguments) {
  //El costo de las llamadas internacionales depende de la zona geográfica en la que se encuentre el país destino, y del número de minutos hablados. En la siguiente tabla se presenta el costo por minuto por zona. A cada uno se le ha asociado una clave. Construya la solución para calcular e imprimir el costo de una llamada dada la clave y la duración de la llamada. . Clave Zona Precio Precio/minuto (del 4 en adelante) 12 América del Norte 200 150 15 América Central 220 180 18 América del Sur 450 350 19 Europa 350 270 23 Asia 600 460 25 África 600 460 29 Oceanía 500 390
  stdout.writeln("Ejercicio 7 - Condicionales Multiples");
  //Entrada
  int clave;
  double minutosHablados, costoLlamada;
  stdout.write("Ingrese la clave de la zona: ");
  clave = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el número de minutos hablados: ");
  minutosHablados = double.parse(stdin.readLineSync()!); 
  //proceso
  switch(clave) {
    case 12:
      costoLlamada = minutosHablados * (minutosHablados > 4 ? 150 : 200);
      break;
    case 15:
      costoLlamada = minutosHablados * (minutosHablados > 4 ? 180 : 220);
      break;
    case 18:
      costoLlamada = minutosHablados * (minutosHablados > 4 ? 350 : 450);
      break;
    case 19:
      costoLlamada = minutosHablados * (minutosHablados > 4 ? 270 : 350);
      break;
    case 23:
      costoLlamada = minutosHablados * (minutosHablados > 4 ? 460 : 600);
      break;
    case 25:
      costoLlamada = minutosHablados * (minutosHablados > 4 ? 460 : 600);
      break;
    case 29:
      costoLlamada = minutosHablados * (minutosHablados > 4 ? 390 : 500);
      break;
    default:
      stdout.writeln("Clave de zona inválida.");
      return;
  }
  stdout.writeln("El costo de la llamada es: $costoLlamada");
}
