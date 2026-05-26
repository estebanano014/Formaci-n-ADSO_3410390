import 'dart:io';

void main(List<String> arguments) {
  //Una compañía de fumigación utiliza aviones para fumigar las cosechas contra una gran variedad de plagas. Las cantidades que la compañía cobra a los granjeros depende de qué es lo que se desea fumigar y del número de hectáreas que se desea fumigar, de acuerdo con la siguiente distribución : Tipo 1 : Fumigación contra malas hierbas, $50000 por hectárea Tipo 2 : Fumigación contra moscas y mosquitos, $70000 por hectárea Tipo 3 : Fumigación contra gusanos, $80000 por hectárea. Tipo 4 : Fumigación contra todo lo anterior, $190000 por hectárea. • Si el área a fumigar es mayor de 100 hectáreas, el granjero goza de un 5% de descuento. • Además, si la cuenta total sobrepasa el $1000000 se hace acreedor a un 10% de descuento sobre la cantidad que sobrepase el $1000000. • Si ambos descuentos son aplicables, el correspondiente a la superficie se considera primero. Diseñe el programa que lea el nombre del granjero, el tipo de fumigación solicitada (1-4) y el número de hectáreas a fumigar.  Se debe imprimir el nombre del granjero y la cuenta total.
  stdout.writeln("Ejercicio 2 - Condicionales Multiples");
  //Entrada
  String nombreGranjero;
  int tipoFumigacion;
  double hectareas;

  stdout.write("Ingrese el nombre del granjero: ");
  nombreGranjero = stdin.readLineSync()!;
  stdout.write("Ingrese el tipo de fumigación (1-4): ");
  tipoFumigacion = int.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el número de hectáreas a fumigar: ");
  hectareas = double.parse(stdin.readLineSync()!);

  //proceso
  double costoPorHectarea;

  switch (tipoFumigacion) {
    case 1:
      costoPorHectarea = 50000;
      break;
    case 2:
      costoPorHectarea = 70000;
      break;
    case 3:
      costoPorHectarea = 80000;
      break;
    case 4:
      costoPorHectarea = 190000;
      break;
    default:
      print("Tipo de fumigación no válido.");
      return;
  }

  double subtotal = costoPorHectarea * hectareas;
  double totalConDescuentoSuperficie = subtotal;

  if (hectareas > 100) {
    totalConDescuentoSuperficie = subtotal * 0.95;
  }

  double totalFinal = totalConDescuentoSuperficie;

  if (totalConDescuentoSuperficie > 1000000) {
    double exceso = totalConDescuentoSuperficie - 1000000;
    double descuentoExceso = exceso * 0.10;
    totalFinal = totalConDescuentoSuperficie - descuentoExceso;
  }

  print("Granjero: $nombreGranjero");
  print ("Cuenta total: \$$totalFinal;");  
}
