import 'dart:io';

void main (List<String> arguments) {
  print('HOLA MUNDOOO!');// Escribe mensaje en la consola

  int edad;
  String diasSemana;

  print("Ingrese su edad: ");
  edad = int.parse(stdin.readLineSync()!);
  print("ingrese los dias de la semana: ");
  diasSemana = stdin.readLineSync()!; 

  //Condicionales
  if (diasSemana == "Lunes") {
    print("Todos hacen el aseo");
    }
    //Condiciional doble
    if (edad >= 18) {
      print("Eres mayor de edad");
    } else {
      print("Eres menor de edad");
    } 
}