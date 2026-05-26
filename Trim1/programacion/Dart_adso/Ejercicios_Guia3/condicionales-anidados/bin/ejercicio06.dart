import 'dart:io';

void main(List<String> arguments) {
  //El dueño de una empresa desea planificar las decisiones financieras que tomara en el Siguiente año. La manera de planificarlas depende de lo siguiente: Si actualmente su capital se encuentra con saldo negativo, pedirá un préstamo bancario para que su nuevo saldo sea de $1000000. Si su capital tiene actualmente un saldo positivo pedirá un préstamo bancario para tener un nuevo saldo de $2000000, pero si su capital tiene actualmente un saldo superior a los $2000000 no pedirá ningún préstamo. Posteriormente repartirá su presupuesto de la siguiente manera. • $500000 para equipo de computo • $200000 para mobiliario • y del resto, la mitad será para la compra de insumos y la otra para otorgar incentivos al personal. Solicitar el capital y en base a este desplegar que cantidades se destinaran para la compra de insumos e incentivos al personal y, en caso de que fuera necesario, a cuanto ascendería la cantidad que se pediría al banco.
  stdout.writeln("Ejercicio 6 - Condicionales Anidados");
  //Entrada
  double capitalActual, nuevoSaldo, montoPrestamo , presupuestoInsumos, presupuestoIncentivos;

  stdout.write("Ingrese el capital actual de la empresa: ");
  capitalActual = double.parse(stdin.readLineSync()!);

  //proceso
  if (capitalActual < 0) {
    montoPrestamo = 1000000 - capitalActual;
    nuevoSaldo = capitalActual + montoPrestamo;
  } else if (capitalActual > 0 && capitalActual <= 2000000) {
    montoPrestamo = 2000000 - capitalActual;
    nuevoSaldo = capitalActual + montoPrestamo;
  } else {
    montoPrestamo = 0;
    nuevoSaldo = capitalActual;
  }

  double presupuestoRestante = nuevoSaldo - 500000 - 200000;
  presupuestoInsumos = presupuestoRestante / 2; 
  presupuestoIncentivos = presupuestoRestante / 2;   

  //salida
  print("El nuevo saldo de la empresa es: \$$nuevoSaldo");
  print("El monto destinado para insumos es: \$$presupuestoInsumos");
  print("El monto destinado para incentivos es: \$$presupuestoIncentivos");
  print("El monto del préstamo es: \$$montoPrestamo");  
}
