import 'dart:io';

void main(List<String> arguments) {
  /*Llenar dos vectores A y B de 8 elementos cada uno. Crear un tercer vector C de 16 elementos que intercale los 
valores de A y B (es decir: el primer elemento de $A$, luego el primero de B, el segundo de A, el segundo de B, 
y así sucesivamente). 
Imprimir el vector C resultante.*/

  List<int> A = [];
  List<int> B = [];
  List<int> C = [];

  // Llenar el vector A
  print("Ingrese los 8 números del vector A:");
  for (int i = 0; i < 8; i++) {
    print("Numero ${i + 1}:");
    int num = int.parse(stdin.readLineSync()!);
    A.add(num);
  }

  // Llenar el vector B
  print("Ingrese los 8 números del vector B:");
  for (int i = 0; i < 8; i++) {
    print("Numero ${i + 1}:");
    int num = int.parse(stdin.readLineSync()!);
    B.add(num);
  }

  // Crear el vector C intercalando A y B
  for (int i = 0; i < 8; i++) {
    C.add(A[i]);
    C.add(B[i]);
  }

  // Imprimir el vector C
  print("Vector C intercalado:");
  print(C);
}
