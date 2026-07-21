import 'dart:io';

void main(List<String> arguments) {
  /* EJE:
  Se requiere guardar 20 numeros en un vector ingresados por el usuario. 
  Se debe decir cuantos numeros impares hay y cuantos impares. 
  Se debe mostrar el producto de los impares y el promedio de los impares.*/

  List<int> numeros = [];
  int contPares = 0, contImpares = 0;
  int sumaImpares = 0;
  double productoPares = 1;
  double promedioImpares;
  int num;

  //Llenar el vector con los 20 numeros del usuario
  for (var i = 0; i < 20; i++) {
    print("Ingrese el numero #${i + 1}");
    num = int.parse(stdin.readLineSync()!);
    numeros.add(num);
  }
  //  Procesamiento
  for (var i = 0; i < numeros.length; i++) {
    if (numeros[i] % 2 == 0) { // Validacion numero par
      contPares++; // Contador de pares
      productoPares = productoPares + numeros[i];
    } else{ // Numero impar
      contImpares++;
      sumaImpares = sumaImpares + numeros[i];
    }
  }
  // Resultado
  print("La cantidad de pares es: $contPares");
  print("La cantidad de impares es: $contImpares");
  print("La cantidad de pares es: $contPares");
  print("El producto de los pares es: $productoPares");
  if (sumaImpares > 0) {
    promedioImpares = sumaImpares / contImpares;
    print("El promedio de impares es: $promedioImpares");
  }else{
    print("No se puede sacar el promedio");
  }
}