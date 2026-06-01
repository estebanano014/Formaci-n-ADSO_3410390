import 'dart:io';

void main(List<String> arguments) {
  //Una academia de música cobra $35.000 por clase individual. Si un estudiante inscribe entre 4 y 7 clases para el mes, recibe un 10% de descuento sobre el subtotal. Si inscribe 8 o más clases, se le mostrará un mensaje que tiene derecho a 2 boletas para un concierto. Solicite la cantidad de clases, calcule el subtotal y utilice condicionales para aplicar el descuento si corresponde. Muestre el total a pagar.
  print("Una academia de música");

  int cantidadClases;
  double precioClase = 35000, subtotal, descuento = 0, totalPagar;

  stdout.write("Ingrese la cantidad de clases que desea inscribir: ");
  cantidadClases = int.parse(stdin.readLineSync()!);
  subtotal = cantidadClases * precioClase;
  totalPagar = subtotal;

  if (cantidadClases >= 4 && cantidadClases <= 7) {
    descuento = subtotal * 0.10;
    totalPagar = subtotal - descuento;
    print("Usted tiene derecho a un descuento del 10% por inscribir entre 4 y 7 clases.");
  } 
  
  if (cantidadClases >= 8) {
    print("Usted tiene derecho a 2 boletas para un concierto por inscribir 8 o más clases.");
  }
  print("El total a pagar es: \$$totalPagar COP.");
}
