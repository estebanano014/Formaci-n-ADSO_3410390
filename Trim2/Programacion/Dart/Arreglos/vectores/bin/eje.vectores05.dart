import 'dart:io';

void main(List<String> arguments) {
  /*Diseñar un algoritmo que almacene 10 números enteros en un vector.
   Luego, solicitar al usuario un número X a buscar. El programa debe 
   contar cuántas veces aparece X dentro del vector y reemplazar cada 
   una de sus apariciones por el valor 0. Finalmente, imprimir el número
   total de reemplazos realizados y el vector modificado. */

  List<int> numeros = [];
  int contador = 0;

  // Llenar el vector con 10 números
  print("Ingrese 10 números enteros:");
  for (int i = 0; i < 10; i++) {
    print("Número ${i + 1}:");
    int num = int.parse(stdin.readLineSync()!);
    numeros.add(num);
  }

  // Solicitar el número a buscar
  print("Ingrese el número que desea buscar:");
  int x = int.parse(stdin.readLineSync()!);

  // Buscar, contar y reemplazar por 0
  for (int i = 0; i < numeros.length; i++) {
    if (numeros[i] == x) {
      contador++;
      numeros[i] = 0;
    }
  }

  // Mostrar resultados
  print("Se realizaron $contador reemplazos.");
  print("Vector modificado:");
  print(numeros);
}
