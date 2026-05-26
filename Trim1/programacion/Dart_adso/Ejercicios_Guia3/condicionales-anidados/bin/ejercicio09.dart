import 'dart:io';

void main(List<String> arguments) {
  //El fondo de administración de pensiones requiere clasificar a las personas que se jubilaran en el año 2009. Existen tres tipos de jubilaciones: por edad, por antigüedad joven y por antigüedad adulta. Las personas adscritas a la jubilación por edad deben tener 60 años o mas y una antigüedad en su empleo de menos de 25 años. Las personas adscritas a la jubilación por antigüedad joven deben tener menos de 60 años y una antigüedad en su empleo de 25 años o más. Las personas adscritas a la jubilación por antigüedad adulta deben tener 60 años o mas y una antigüedad en su empleo de 25 años o mas. Determinar en que tipo de jubilación, quedara adscrita una persona.
  stdout.writeln("Ejercicio 9 - Condicionales Anidados");
  //Entrada
  String nombrePersona;
  int edadPersona, antiguedadEmpleo;
  
  stdout.write("Ingrese el nombre de la persona: ");
  nombrePersona = stdin.readLineSync()!;
  stdout.write("Ingrese la edad de la persona: ");
  edadPersona = int.parse(stdin.readLineSync()!);
  stdout.write("Ingrese la antigüedad en el empleo de la persona: ");
  antiguedadEmpleo = int.parse(stdin.readLineSync()!);

  //proceso
  if (edadPersona >= 60 && antiguedadEmpleo < 25) {
    print("La persona $nombrePersona quedará adscrita a la jubilación por edad.");
  } else if (edadPersona < 60 && antiguedadEmpleo >= 25) {
    print("La persona $nombrePersona quedará adscrita a la jubilación por antigüedad joven.");
  } else if (edadPersona >= 60 && antiguedadEmpleo >= 25) {
    print("La persona $nombrePersona quedará adscrita a la jubilación por antigüedad adulta.");
  } else {
    print("La persona $nombrePersona no cumple con los requisitos para ninguna jubilación.");
  }

}
