import 'dart:io';
void main(List<String> arguments) {
  //Una compañía de seguros esta abriendo un depto. de finanzas y estableció un programa para captar clientes, que consiste en lo siguiente: Si el monto por el que se efectúa la fianza es menor que $50 000 la cuota a pagar será por el 3% del monto, y si el monto es mayor que $50 000 la cuota a pagar será el 2% del monto. La compañia desea determinar cual será la cuota que debe pagar un cliente.  */
stdout.writeln("Ejercicio 7 - Condicionales Simples");

double montoFianza, cuotaPagar;

  //Entrada
  stdout.write("Ingrese el monto de la fianza: ");
  montoFianza = double.parse(stdin.readLineSync()!);

  //Proceso
  cuotaPagar = 0;
  if (montoFianza < 50000) {
    cuotaPagar = montoFianza * 0.03;
  } 
  if (montoFianza >= 50000) {
    cuotaPagar = montoFianza * 0.02;
  }

  //Salida
  print("La cuota a pagar es de \$$cuotaPagar" );

}             

