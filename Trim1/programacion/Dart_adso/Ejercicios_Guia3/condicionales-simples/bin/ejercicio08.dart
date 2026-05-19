import 'dart:io';
void main(List<String> arguments) {
  //Dada la duración en minutos de una llamada calcular el costo, considerando: • Hasta tres minutos el costo es 600 • Por encima de tres minutos es 600 más 150 por cada minuto adicional a los tres primeros.  */
stdout.writeln("Ejercicio 8 - Condicionales Simples");

int duracionLlamada;
double costoLlamada;

  //Entrada
  stdout.write("Ingrese la duración de la llamada en minutos: ");
  duracionLlamada = int.parse(stdin.readLineSync()!);

  //Proceso
  costoLlamada = 600;
  if (duracionLlamada > 3) {
    costoLlamada += (duracionLlamada - 3) * 150;
  }

  //Salida
  print("El costo de la llamada es de \$$costoLlamada" );

}           

