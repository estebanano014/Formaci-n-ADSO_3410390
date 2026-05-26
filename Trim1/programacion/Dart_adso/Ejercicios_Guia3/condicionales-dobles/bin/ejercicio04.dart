import 'dart:io';
void main(List<String> arguments) {
  // Una empresa de bienes raíces ofrece casas de interés social, bajo las siguientes condiciones: Si los ingresos del comprador son mayores o iguales a $800000 la cuota inicial será del 15% del costo de la casa y el resto se distribuirá en pagos mensuales, a pagar en diez años. Si los ingresos del comprador son inferiores a de $800000 la cuota inicial será del 30% del costo de la casa y el resto se distribuirá en pagos mensuales a pagar en 7 años. La empresa quiere saber cuanto debe pagar un comprador por concepto de cuota inicial y cuanto por cada pago mensual ingresando el valor de la casa.
  stdout.writeln("Ejercicio 4 - Condicionales Dobles");
  //Entrada
  double ingresos, costoCasa, cuotaInicial, pagoMensual;

  stdout.write("Ingrese los ingresos del comprador: ");
  ingresos = double.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el costo de la casa: ");
  costoCasa = double.parse(stdin.readLineSync()!);
  //Proceso

  if (ingresos >= 800000) {
    cuotaInicial = costoCasa * 0.15;
    pagoMensual = (costoCasa - cuotaInicial) / (10 * 12);
    print(
      "La cuota inicial es de \$$cuotaInicial COP y el pago mensual es de \$$pagoMensual COP.",
    );
  } else {
    cuotaInicial = costoCasa * 0.30;
    pagoMensual = (costoCasa - cuotaInicial) / (7 * 12);
    print(
      "La cuota inicial es de \$$cuotaInicial COP y el pago mensual es de \$$pagoMensual COP.",
    );
  }
}
