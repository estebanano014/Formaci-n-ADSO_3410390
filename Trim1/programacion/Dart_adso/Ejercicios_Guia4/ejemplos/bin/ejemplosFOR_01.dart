import 'dart:io';

void main(List<String> arguments) {
  for (var i = 0; i <=10; i++) {
    // Imprime los numeros del 0 al 10
    print("Numero $i");
  }

  // Imprime los numeros del 1 al 5
  print("-------------------");
  for (var i = 1; i <= 5; i++) {
    stdout.write("$i, ");
    if (i != 5){
      stdout.write("$i, ");
    }else{
      stdout.write("$i");
    }
  }
  //Imprimelos numeros de 2 al 8
  print("-------------------");
  String numeros = "";
  for (var i = 2; i <=8; i++) {
    numeros += "$i,"; 
  }
  print(numeros.substring(0, numeros.length-1));

  //Imprime los numeros pares hasta el 20
  for (var i = 2; i <= 20; i+=2) {
    print("Num: $i");
  }
  //Preguntar dos numeros al ususario y mostrar los numeros de ese rango
  int numero1, numero2;
  String entradaDatos;
  print("Ingrese numero 1");
  entradaDatos = stdin.readLineSync()!;
  numero1 = int.tryParse(entradaDatos)?? 0;
  print("Ingrese numero 2");
  entradaDatos = stdin.readLineSync()!;
  numero2 = int.tryParse(entradaDatos)?? 3;
  if (numero1 <= numero2){
    for (var i = numero1; i <= numero2; i++) {
    print("| $i |");
    }
  } else {
    print("Rango incorrecto");  
  }
  //Mostrar los numeros del -20 al 20
  for (var i = -20; i <= 20; i++) {
    print("Num: $i");
  }
}