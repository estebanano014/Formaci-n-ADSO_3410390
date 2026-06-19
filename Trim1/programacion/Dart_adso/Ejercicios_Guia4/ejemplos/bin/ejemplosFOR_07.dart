import 'dart:io';
void main(List<String> arguments) {
  print('Hello world!');
  //Parte 1: Se requiere saber cuanto dinero se recoge entre un grupo de aprendices que ahorra 1.000 semanales,
  // se debe solicitar el total de aprendices y por cada aprendiz se requiere saber si pago multa por llegar 
  //tarde ($500) y multa por no hacer el aseo ($300). Se debe saber al final cuanto se recogio en total.
  
  //Parte 2: Al ejercicio anterior, incluir cuantos aprendices no hicieron el aporte semanal.

  //Parte 3: Modificar el mismo ejercicio para que se haga por 4 semanas. Se debe mostrar el total recogido
  // de las 4 semanas.

  //Parte 4: Mostrar el total de cada semana y decir cual fue la semana que mas se recogio dinero.
  
/*
import 'dart:io';

void main(List<String> args) {
  double dineroRecogido = 0, multaAseo = 300, multaLlegarTarde = 500;
  int aprendices, opcion1, opcion2;

  print("Digite la cantidad de aprendices");
  aprendices = int.parse(stdin.readLineSync()!);

  for (var i = 1; i <= aprendices; i++) {
    print("Aprende $i");
    print("Debe multa por no hacer aseo? 1. Si | 2. No");
    opcion1 = int.parse(stdin.readLineSync()!);
    dineroRecogido += 1000;
    if (opcion1 == 1) {
      dineroRecogido += multaAseo;
    }
  }

  print("Debe multa por llegar tarde? 1. Si | 2. No");
  opcion2 = int.parse(stdin.readLineSync()!);
  if (opcion2 == 1) {
    dineroRecogido += multaLlegarTarde;
  }

  print("El dinero recogido en total es: $dineroRecogido");
}
*/

  double dineroRecogido = 0, multaAseo = 300, multaLlegarTarde = 500;
  int aprendices, opcion1, opcion2;
  int aprendicesSinAporte = 0;

  print("Digite la cantidad de aprendices");
  aprendices = int.parse(stdin.readLineSync()!);

  for (var i = 1; i <= aprendices; i++) {
    print("Aprende $i");
    print("Debe multa por no hacer aseo? 1. Si | 2. No");
    opcion1 = int.parse(stdin.readLineSync()!);
    
    print("Debe multa por llegar tarde? 1. Si | 2. No");
    opcion2 = int.parse(stdin.readLineSync()!);
    
    dineroRecogido += 1000;
    
    if (opcion1 == 1) {
      dineroRecogido += multaAseo;
    }
    
    if (opcion2 == 1) {
      dineroRecogido += multaLlegarTarde;
    }
    
    if (opcion1 == 1 || opcion2 == 1) {
      aprendicesSinAporte++;
    }
  }

  print("El dinero recogido en total es: $dineroRecogido");
  print("Aprendices que no hicieron el aporte semanal: $aprendicesSinAporte");
}