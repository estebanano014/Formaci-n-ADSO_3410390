import 'dart:io';

void main(List<String> arguments) {
  List<int> X = [];

  // Llenar el vector X con 12 elementos
  print("Ingrese los 12 números para llenar el vector:");
  for (var i = 0; i < 12; i++) {
    print("Numero #${i + 1}:");
    int num = int.parse(stdin.readLineSync()!);
    X.add(num);
  }

  // Leer el número a buscar
  print("Ingrese el número que desea buscar:");
  int numeroBuscado = int.parse(stdin.readLineSync()!);

  // Buscar usando indexOf (devuelve -1 si no encuentra)
  int posicion = X.indexOf(numeroBuscado);

  // Mostrar resultado
  print("------ RESULTADO DE LA BÚSQUEDA ------");
  print("Vector X: $X");
  
  if (posicion != -1) {
    print("El número $numeroBuscado se encuentra en la posición: ${posicion + 1}");
  } else {
    print("NO");
  }
}