import 'dart:io';
void main(List<String> arguments) {
  // Leer 2 números; si son iguales que los multiplique, si el primero es mayor que el segundo que los reste y si no que los sume. 
  stdout.writeln("Ejercicio 7 - Condicionales Anidados");
  //Entrada
  int numero1, numero2, operacion;

  stdout.write("Ingrese dos numeros: ");
  numero1 = int.parse(stdin.readLineSync()!);
  numero2 = int.parse(stdin.readLineSync()!);
  
  //proceso
  if (numero1 == numero2) {
    print("Los numeros son iguales, se multiplicaran.");
    operacion = numero1 * numero2;
    print("El resultado de la operacion es: $operacion");
  
  } else if (numero1 > numero2) {
    print("El primer numero es mayor que el segundo, se restaran.");
    operacion = numero1 - numero2;
    print("El resultado de la operacion es: $operacion"); 

  } else {
    print("El primer numero no es mayor que el segundo, se sumaran.");
    operacion = numero1 + numero2;
    print("El resultado de la operacion es: $operacion");
  }
}
