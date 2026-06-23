import 'dart:io';

void main(List<String> args) {
  /* */
  double valorMoto = 2000000;
  double ahorroSemanal;
  double ahorroTotal = 0;//Variable tipo acumulador
  int contSemanas = 0;

  while (ahorroTotal < valorMoto) {
    print("Ingrese el valor ahorrado en la semana #${contSemanas+1}");
    ahorroSemanal = double.parse(stdin.readLineSync()!);
    //El while tambien sirve para validacion de datos
    while (ahorroSemanal < 0) {
      print("El ahorro no puede ser negativo");
      print("Ingrese de nuevo el valor ahorrado en la semana #${contSemanas+1}");
      ahorroSemanal = double.parse(stdin.readLineSync()!);
    }
    ahorroTotal = ahorroTotal + ahorroSemanal;
    if(ahorroTotal >= valorMoto) {
      print("Felicitaciones, has alcanzado tu meta de ahorro para comprar la moto");
    }
    contSemanas++;
  }
  print("Se necesitaron $contSemanas semana(s), y se ahorro un total $ahorroTotal");
}