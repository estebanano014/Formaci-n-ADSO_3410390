import 'dart:io';

void main(List<String> arguments) {
  //Una empresa de software realizará el ajuste salarial anual de sus empleados basándose en su categoría (1 a 4). Solicite el salario actual del empleado y su número de categoría. En lugar de hacer el cálculo del nuevo salario directamente dentro de cada case, utilice el switch únicamente para definir el porcentaje de aumento correspondiente a esa categoría en una variable temporal (Cat 1: 15%, Cat 2: 10%, Cat 3: 8%, Cat 4: 5%). Una vez cerrado el switch, realice el cálculo matemático final e imprima el resultado. (Esto enseña el principio DRY: No repetir código).
  print('Empresa de software ');

  int categoria;
  double salarioActual, porcentajeAumento, nuevoSalario;

  print("Ingrese su salario actual: ");
  salarioActual = double.parse(stdin.readLineSync()!);
  print("Ingrese el numero de su categoria (1-2-3-4): ");
  categoria = int.parse(stdin.readLineSync()!);


  switch (categoria) {
    case 1:
      porcentajeAumento = 0.15;
      
      break;
    case 2:
      porcentajeAumento = 0.10;
      nuevoSalario = salarioActual + salarioActual * porcentajeAumento;
      break;
    case 3:
      porcentajeAumento = 0.08;
      break;
    case 4:
      porcentajeAumento = 0.05;
      
      break;
    default:
      print("Categoría no válida.");
      return;
  }

  nuevoSalario = salarioActual + (salarioActual * porcentajeAumento);
  print("Su nuevo salario es: \$$nuevoSalario COP.");

}
