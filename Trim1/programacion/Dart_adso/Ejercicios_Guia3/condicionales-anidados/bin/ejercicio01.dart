import 'dart:io';
void main(List<String> arguments) {
  //Dado tres números calcular el mayor 
  stdout.writeln("Ejercicio 1 - Condicionales Anidados");
  //Entrada
  int numero1, numero2, numero3;

  stdout.write("Ingrese tres numeros");
  numero1 = int.parse(stdin.readLineSync()!);
  numero2 = int.parse(stdin.readLineSync()!);
  numero3 = int.parse(stdin.readLineSync()!);

  //proceso
  if (numero1 > numero2 && numero1 > numero3) {
    print("El mayor es: $numero1");
  } else {
    if (numero2 > numero3) {
      print("El mayor es: $numero2");
    } else {
      print("El mayor es: $numero3");
    }
  }
}
