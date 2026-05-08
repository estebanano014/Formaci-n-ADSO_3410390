import 'dart:io';

void main(List<String> args) {
  //Declaracion de variables
  int horasTrabajadas;
  int salarioTotal;

  //Entrada de datos
  print("Ingrese el numero de horas trabajadas: ");
  horasTrabajadas = int.parse(stdin.readLineSync()!);

  //Proceso y salida de datos
  if (horasTrabajadas <= 48) {
    salarioTotal = horasTrabajadas * 20000;
    print("El salario total es: $salarioTotal");
  } else {
    int horasExtra = horasTrabajadas - 48;
    salarioTotal = (48 * 20000) + (horasExtra * (20000 + 5000));
    print("El salario total es: $salarioTotal");
  }
}
