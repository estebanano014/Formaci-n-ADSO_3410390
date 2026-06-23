void main(List<String>args) {
  /*Un sistema de registro en el centro CPIC
   necesita asignar turnos consecutivosa los aprendices
   del programa ADSO que ingresan al laboratorio. Escribe un 
   programa en DART que asigne e imprima los numeros de turno
   del 1 al 5 utilizando un bucle while. */

   int turno = 1;
   int limiteTurnos = 5;
   print("Sistema de registro CPIC");
   while (turno <= limiteTurnos) {
     print("Se ha asignado el turno #$turno");
     turno++;
   }
   print("Se han asignado todos los turnos disponibles");
}