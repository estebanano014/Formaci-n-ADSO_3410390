import 'dart:io';
void main(List<String> arguments){
//Desarrollar un algoritmo que lea dos números y los imprima en forma ascendente.  
stdout.writeln("Ejercicio 1 - Condicionales Dobles");
double numero1, numero2;
  //Entrada
  stdout.write("Ingrese el primer numero: ");
  numero1 = double.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el segundo numero: ");
  numero2 = double.parse(stdin.readLineSync()!);
  //Proceso
  if (numero1 < numero2) {
    print("Los numeros en forma ascendente son: $numero1, $numero2");
  } else {
    print("Los numeros en forma ascendente son: $numero2, $numero1");
  }       
}
