import 'dart:io';

void main() {

  double precio, descuento, totalPagar;
  int cantidad;

  stdout.writeln("Ingrese el precio del producto: ");
  precio = double.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese la cantidad: ");
  cantidad = int.parse(stdin.readLineSync()!);  
  totalPagar = precio * cantidad;
  descuento = totalPagar * 0.15; // Aplica un descuento del 15%  
  totalPagar = totalPagar - descuento; // Resta el descuento al total a pagar

  print("El total a pagar es: $totalPagar"); // Imprime el total a pagar después de aplicar el descuent
} 