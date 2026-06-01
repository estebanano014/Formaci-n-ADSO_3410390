import 'dart:io';

void main(List<String> arguments) {
  //El área de Bienestar al Aprendiz del SENA ha actualizado las políticas para el servicio de restaurante. Para recibir el almuerzo subsidiado por un valor de $2.000, el aprendiz debe cumplir simultáneamente con los siguientes requisitos: pertenecer al estrato 1 o al estrato 2, Y tener cero (0) faltas disciplinarias registradas en el sistema. Si el aprendiz no cumple con todas estas condiciones, debe cancelar la tarifa regular de $6.000. Solicite al usuario su nombre, su estrato y la cantidad de faltas disciplinarias. Utilice un condicional doble con operadores lógicos para determinar el valor a pagar.
  print('El área de Bienestar al Aprendiz del SENA');

  String nombre;
  int estrato, faltasDisciplinarias;
  double tarifaSubsidio = 2000, tarifaRegular = 6000, totalPagar;

  stdout.write('Ingrese su nombre: ');
  nombre = stdin.readLineSync()!;
  stdout.write('Ingrese su estrato (1 o 2): ');
  estrato = int.parse(stdin.readLineSync()!);
  stdout.write('Ingrese la cantidad de faltas disciplinarias registradas: ');
  faltasDisciplinarias = int.parse(stdin.readLineSync()!);

  if ((estrato == 1 || estrato == 2) && faltasDisciplinarias == 0) {
    totalPagar = tarifaSubsidio;
    print('$nombre, usted cumple con los requisitos para el almuerzo subsidiado. El valor a pagar es: \$$totalPagar COP.');
  } else {
    totalPagar = tarifaRegular;
    print('$nombre, usted no cumple con los requisitos para el almuerzo subsidiado. El valor a pagar es: \$$totalPagar COP.');
  }

  
}
