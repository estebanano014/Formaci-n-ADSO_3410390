/*<Se requiere simular la descarga de un archivo con internet hasta que llegue al 100%
  Con un numero aleatorio entre 1 y 20 se debe simular ese porcentaje de descarga.  */

import 'dart:math';

void main(List<String> args) {
  Random rand = Random();
  double porcentajeDescarga = 0; // cariable acumulador

  double descarga;

  do {
    descarga = rand.nextDouble()*20;
    print("Porcentaje descarga > ${descarga.round()}");
    porcentajeDescarga += descarga.round();
    if (porcentajeDescarga > 100) {
      porcentajeDescarga = 100;
    }
    print("Descarga total> $porcentajeDescarga");
  } while (porcentajeDescarga < 100);
  print("El archivo se descargo exitosamente");
}
