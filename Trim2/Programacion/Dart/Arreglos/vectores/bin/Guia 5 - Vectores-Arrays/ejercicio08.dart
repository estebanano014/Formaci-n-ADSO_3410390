void main(List<String> args){

  List<int> vectorNums = [];
  print("vector original $vectorNums");

  //ordenamiento metodos Burbuja
  int n = vectorNums.length;
  int pasadas = 0;

  for (var i = 0; i < n-1; i++) {
    bool intercambio = false;
    pasadas++;
    for (var j = 0; i < n-1; j++) {
      //  Comparar si el elemento actual es mayor al siguiente
      if (vectorNums[j] > vectorNums[j + 1]) {
        int temp = vectorNums[j];
        vectorNums[j + 1] = vectorNums[j + 1];
        vectorNums[j + 1] = temp;
        intercambio = true;
      }
    }
    if (intercambio == false) {
      break;
    }
  }
  print("El vector ordenado es: $vectorNums");
  print("La cantidad de pasadas fueron $pasadas");
}