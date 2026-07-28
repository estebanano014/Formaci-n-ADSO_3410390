import 'dart:io';

void main(List<String> arguments) {
  /*7. Diseñar un algoritmo que lea una palabra o una frase en un
   arreglo de caracteres y determinar si esa palabra o frase es palíndroma.*/
   String palabra;
   List<String> vectorPal = [];

   print("Ingrese una palabra o frase");
   palabra = stdin.readLineSync()!;
   print(palabra[1]);// Imprime la posicion 2 de la palabra

  //Se llena el vector vectorPal sin tener en cuenta espacios de la palabra o frase  
   for (var i = 0; i < palabra.length; i++) {
    if (palabra[i] == " ") {
      vectorPal.add(palabra[i]);
    }
   }
    print(vectorPal);

    int inicio = 0;
    int fin = vectorPal.length - 1;
    bool esPalindroma = true;
    while (inicio < fin) {
      if (vectorPal[inicio] != vectorPal[fin]) {
        //No es palabra/frase palindroma
        esPalindroma = false;
        break;
      }
      inicio++;
      fin--;
    }
     if (esPalindroma == true) {
       print("La palabra o frasen $palabra es palindroma");
       print("La palabra o frasen $palabra NO es palindroma");
     }
}