import 'dart:io';

void main(List<String> arguments) {
  /*El CPIC desea registrar la información de N aprendices. Para 
   cada aprendiz se debe almacenar su código de matrícula, su nota
   final y su porcentaje de asistencia utilizando arreglos
   independientes (paralelos). Desarrollar una aplicación que 
   determine e imprima:La lista de aprendices que aprobaron
   (nota mayor o igual a 3.0 y asistencia mayor o igual al 80%).
   El código y la nota del aprendiz con el promedio más alto del grupo.
   Nota: se debe declarar un arreglo de cadenas para el código, un arreglo
   de reales para la nota final y un arreglo de enteros/reales
   para el porcentaje de asistencia. */

  List<String> codigoAprendices = [];
  List<double> notasFinales = [];
  List<int> porcentajeAsistencias = [];
  List<String> nombreAprendices = [];

  for (int i = 0; i < 2; i++) {
    print("Estudiante número ${i + 1}");

    print("*" *40);
    print("Ingrese el nombre del estudiante:");
    String nombre = stdin.readLineSync()!;
    nombreAprendices.add(nombre);

    print("*" *40);
    print("Digite el código del estudiante:");
    String codigo = stdin.readLineSync()!;
    codigoAprendices.add(codigo);

    print("*" *40);
    print("Digite la nota final:");
    double nota = double.parse(stdin.readLineSync()!);
    notasFinales.add(nota);

    print("*" *40);
    print("Digite el porcentaje de asistencia:");
    int asistencia = int.parse(stdin.readLineSync()!);
    porcentajeAsistencias.add(asistencia);
  }

  String nombreGano = nombreAprendices[0];
  double notaMayor = notasFinales[0];
  String codigoMayor = codigoAprendices[0];

  for (int i = 1; i < notasFinales.length; i++) {
    if (notasFinales[i] > notaMayor) {
      notaMayor = notasFinales[i];
      codigoMayor = codigoAprendices[i];
      nombreGano = nombreAprendices[i];
    }
  }

  print("------ NOTA MÁS ALTA ------");
  print("Código: $codigoMayor");
  print("Nota: $notaMayor");

if (notaMayor >= 3) {
  print("------ APRENDICES QUE APROBARON ------");
  print("Nombre: $nombreGano");
}
  
}
