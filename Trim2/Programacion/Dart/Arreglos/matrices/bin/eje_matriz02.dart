import 'dart:io';

void main(List<String> arguments) {
  print('Hello world!');

  List<int> matriz= [];

  int columnas = 4;
  int filas = 3;

  //Ingreso de datos a la matriz por parte del ususario
  for (var i = 0; i < filas; i++) { // Ciclo externo recorre las filas
    List<int> fila = [];
    for (var j = 0; j < columnas; j++) {
      print("Ingrese el numero para la posicion ($i, $j)");
      int valor = int. parse(stdin.readLineSync()!);
      fila.add(valor);
    }
    matriz.add(filas);
  }
  print("Datos de la matriz ");
  for (var filas in matriz) {
    print(filas);
  }
  //Imprimir la matriz valor por valor
  print("Valor x Valor de la matriz");
  for (var i = 0; i < filas; i++) {
    for (var j = 0; j < columnas; j++) {
      print("Valor ($i,$j) = ${matriz[i]}");
    }
    print("-"*20);
  }
}
