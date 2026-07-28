import 'dart:io';

void main(List<String> arguments) {
  /*4. Almacenar 8 números en un vector, almacenarlos en otro vector 
  en orden inverso al vector original e imprimir el vector resultante. */
  List<int> numeros = [];
  List<int> numerosInvertidos = [];

  print("Ingrese 8 numeros");
  for (var i = 0; i < 8; i++) {
    print("Numero #${i + 1}");
    int num = int.parse(stdin.readLineSync()!);
    numeros.add(num);
  }

  for (var i = 0; i < numeros.length; i++) {
    numerosInvertidos.add(numeros[i]);
    print("Los numeros en reversa son: ${numerosInvertidos.reversed}");
  }
}