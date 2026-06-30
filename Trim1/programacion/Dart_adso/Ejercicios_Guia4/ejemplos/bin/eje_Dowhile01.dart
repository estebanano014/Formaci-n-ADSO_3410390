
import 'dart:math';

void main(List<String> args) {
  /*Se requiere simular el lanzamiento de un dado de 6 caras.Se debe lanzar el dado hasta que caiga el numero 6.
  En ese momento se le dira al usuario que gano con X cantidad de intentos. */

  int intentos = 0; // variable tipo contador.
  Random lanzamiento = Random(); // Crear un objeto de la clase random

  int Valordado;

  do {
    intentos++;
    print("Lanzamiento #$intentos del dado");
    Valordado = lanzamiento.nextInt(6) + 1;
    print("Valor dado $Valordado");
  } while (Valordado != 6);
  print("Has ganado con el numero #6 con $intentos intentos");

}