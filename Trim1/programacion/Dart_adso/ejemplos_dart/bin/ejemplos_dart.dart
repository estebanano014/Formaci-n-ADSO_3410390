import 'dart:io';

void main(List<String> arguments) {
  print('HOLA MUNDOOO!');// Escribe mensaje en la consola

//Definicion de una variable tipo cadena
  String programaFormacion = "Analisis y Desarrollo de Software"; 

  // Definicion variable tipo entero
  int cantAprendices = 28;

  // Definicion variable tipo real
  double promediOgrupo = 3.7;

  // Definicion variable tipo booleano O logico
  bool estaActivo = false; //TRUE O FALSE

  // Definicion de una constante. Se asigna en tiempo de compilacion 
  const  PI = 3.1416;

  // Definicion de una constante que se asigna en tiempo de ejecucion
  final fechaActual = DateTime.now();

  print(programaFormacion); // Imprime el valor de la variable programaFormacion
  print(".........."); // Imprime un texto 
  print("Programa de formacion: $programaFormacion"); // Imprime un texto junto con el valor de la variable programaFormacion
  print("Cantidad de aprendices: $cantAprendices"); // Imprime un texto junto con el valor de la variable cantAprendices
  print("Promedio del grupo: $promediOgrupo"); // Imprime un texto junto con el valor de la variable promediOgrupo
  print("¿El programa esta activo? $estaActivo"); // Imprime un texto junto con el valor de la variable estaActivo
  print("Valor de PI: $PI"); // Imprime un texto junto con el valor de la constante PI
  print("Fecha actual: $fechaActual"); // Imprime un texto junto con el valor de la constante fechaActual

  // Operaciones de leer y escribir datos en consola
  String? nombreUsuario; // Definicion de una variable tipo cadena que puede ser nula
  int edad; // Definicion de una variable tipo entero
  double peso; // Definicion de una variable tipo decimal
  stdout.writeln("Bienvenid@ a nuestro App: "); // Solicita al usuario que ingrese su nombre
  stdout.writeln("Ingrese su nombre: "); // Solicita al usuario que ingrese su nombre
  nombreUsuario = stdin.readLineSync(); // Lee el nombre ingresado por el usuario 
  stdout.writeln("ingrese su edad: "); // Solicita al usuario que ingrese su edad
  edad = int.parse(stdin.readLineSync()!); // Lee la edad ingresada por el usuario y la convierte a entero
  stdout.writeln("Ingrese su peso: "); // Solicita al usuario que ingrese su peso
  peso = double.parse(stdin.readLineSync()!); // Lee el peso ingresado por el usuario y lo convierte a decimal    
  print("Hola $nombreUsuario, tienes $edad años y tu peso es de $peso kg"); // Imprime un mensaje personalizado con el nombre, edad y peso del usuario
  
  
}