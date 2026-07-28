import 'dart:io';

void main(List<String> arguments) {
  /*Almacenar 15 números en un vector, imprimir cuantos son ceros, cuántos son negativos, 
  cuantos positivos. Imprimir además la suma de los negativos, la suma de los ceros y la 
  suma de los positivos.*/

  List<int> numeros = [];
  int contadorCeros = 0;
  List<int> positivos = [];
  int contadorPositivos = 0;
  int sumaPositivos = 0;
  List<int> negativos = [];
  int ContadorNegativos = 0;
  int sumaNegativos = 0;

  print("Ingrese 15 numeros");
  for (var i = 0; i < 15; i++) {
    print("Numero #${i + 1}");
    int num = int.parse(stdin.readLineSync()!);
    numeros.add(num);
  }

  for (var i = 0; i < numeros.length; i++) {
    if (numeros[i] == 0) {
      contadorCeros++;
    }
  }
  print("La cantidad de ceros es de ${contadorCeros}");

  for (var i = 0; i < numeros.length; i++) {
    if (numeros[i] >= 0) {
      contadorPositivos++;

      positivos.add(numeros[i]);
      sumaPositivos += numeros[i];
    }
    print("La cantidad de positvos es de ${contadorPositivos}");
    print("La suma de los positvos es de ${sumaPositivos}");
  }

  for (var i = 0; i < numeros.length; i++) {
    if (numeros[i] >= 0) {
      contadorPositivos++;

      negativos.add(numeros[i]);
      sumaNegativos += numeros[i];
    }
    print("La cantidad de negativos es de ${ContadorNegativos}");
    print("La suma de los negativos es de ${sumaNegativos}");
  }
}
