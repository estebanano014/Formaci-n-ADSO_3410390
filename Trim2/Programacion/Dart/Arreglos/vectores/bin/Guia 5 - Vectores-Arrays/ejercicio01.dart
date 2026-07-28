import 'dart:io';

void main(List<String> arguments) {
  /*1. Calcular el promedio de 50 valores almacenados en un vector.
   Determinar además cuantos son mayores que el promedio, imprimir 
   el promedio, el número de datos mayores que el promedio y una 
   lista de valores mayores que el promedio.  */

   List<int> numeros = [];
   int num = 0;

   print("Ingrese 50 valores para calcular su promedio");
   for (int i = 0; i < 50; i++) {
     print("Numero #${i + 1}");
     num = int.parse(stdin.readLineSync()!);
     numeros.add(num);
   }

   // Calcular el promedio
   double suma = 0;
   for (int i = 0; i < numeros.length; i++) {
     suma += numeros[i];
   }
   double promedio = suma / numeros.length;

   // Determinar cuántos son mayores que el promedio
   List<int> mayoresQuePromedio = [];
   for (int i = 0; i < numeros.length; i++) {
     if (numeros[i] > promedio) {
       mayoresQuePromedio.add(numeros[i]);
     }
   }

   // Mostrar resultados
   print("-------------------------- RESULTADOS ---------------------------------");
   print("Promedio: ${promedio.toStringAsFixed(2)}");
   print("Cantidad de números mayores que el promedio: ${mayoresQuePromedio.length}");
   print("Lista de valores mayores que el promedio: $mayoresQuePromedio");
}