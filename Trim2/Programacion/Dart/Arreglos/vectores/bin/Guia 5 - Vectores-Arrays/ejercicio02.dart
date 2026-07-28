import 'dart:io';

void main(List<String> arguments) {
  /*Llenar dos vectores A y B de 10 elementos cada uno, sumar el elemento uno del vector A con el elemento uno
   del vector B y así sucesivamente hasta 10, almacenar el resultado en un vector C, e imprimir el vector resultante. */

  List<int> A = [];
  List<int> B = [];
  List<int> C = []; // Vector para almacenar los resultados

  print("Ingrese los 10 números del vector A:");
  for (int i = 0; i < 10; i++) {
    print("Numero ${i + 1}:");
    int num = int.parse(stdin.readLineSync()!);
    A.add(num);
  }

  // Llenar el vector B
  print("Ingrese los 10 números del vector B:");
  for (int i = 0; i < 10; i++) {
    print("Numero ${i + 1}:");
    int num = int.parse(stdin.readLineSync()!);
    B.add(num);
  }

  // Sumar los elementos correspondientes y almacenar en C
  for (int i = 0; i < 10; i++) {
    C.add(A[i] + B[i]);
  }

  // Imprimir resultados
  print("\n=== RESULTADOS ===");
  print("Vector A: $A");
  print("Vector B: $B");
  print("Vector C (A + B): $C");
  
  // Mostrar las sumas detalladamente (opcional)
  print("\nSumas detalladas:");
  for (int i = 0; i < 10; i++) {
    print("${A[i]} + ${B[i]} = ${C[i]}");
  }
}