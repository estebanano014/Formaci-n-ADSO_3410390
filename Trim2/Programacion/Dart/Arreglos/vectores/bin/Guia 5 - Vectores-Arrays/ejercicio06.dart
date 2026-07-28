import 'dart:io';

void main(List<String> arguments) {
  /*6. Diseñe un algoritmo que lea dos vectores A y B de 7 elementos cada uno y 
  multiplique el primer elemento de A con el último elemento de B y luego el segundo 
  elemento de A por el sexto elemento de B y así sucesivamente hasta llegar al séptimo 
  elemento de A por el primer elemento de B. El resultado de la multiplicación 
  almacenarlo en un vector C. Mostrar el resultado. */

  List<int> A = [];
  List<int> B = [];
  List<int> C = [];

  // Llenar el vector A
  print("Ingrese los 7 números del vector A:");
  for (var i = 0; i < 7; i++) {
    print("Número A[${i + 1}]:");
    int num = int.parse(stdin.readLineSync()!);
    A.add(num);
  }

  // Llenar el vector B
  print("\nIngrese los 7 números del vector B:");
  for (var i = 0; i < 7; i++) {
    print("Número B[${i + 1}]:");
    int num = int.parse(stdin.readLineSync()!);
    B.add(num);
  }

  // Multiplicar: A[i] * B[6-i] (primer elemento de A con último de B, etc.)
  for (var i = 0; i < 7; i++) {
    C.add(A[i] * B[6 - i]);
  }

  // Mostrar resultados
  print("------ RESULTADOS ------");
  print("Vector A: $A");
  print("Vector B: $B");
  print("Vector C (multiplicaciones): $C");
  
  // Mostrar las multiplicaciones detalladamente
  print("Multiplicaciones detalladas:");
  for (var i = 0; i < 7; i++) {
    print("A[${i + 1}] * B[${7 - i}] = ${A[i]} × ${B[6 - i]} = ${C[i]}");
  }
}