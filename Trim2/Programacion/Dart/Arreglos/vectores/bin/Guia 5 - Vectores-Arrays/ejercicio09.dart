import 'dart:io';

void main(List<String> arguments) {
  /*9. Una agencia de seguros desea obtener un reporte al final del día de sus n 
  empleados para determinar cuál fue el empleado que obtuvo el mayor sueldo en base 
  a sus ventas y comisiones, se registrará el nombre del empleado la edad y el sueldo 
  que obtuvo al final del día. Desarrollar un programa que pida al usuario el nombre 
  de los n empleados, su edad y el sueldo para generar un reporte que lo muestre en 
  pantalla de la siguiente manera: el nombre del empleado, edad, sueldo, el empleado 
  con mayor sueldo, el sueldo del empleado que gana más y su edad. 
  Debe declarar un arreglo de enteros para la edad. 
  Debe declarar un arreglo de reales para el sueldo. 
  Debe declarar un arreglo de cadena para el nombre */

  // Solicitar cantidad de empleados
  print("=== AGENCIA DE SEGUROS ===");
  print("Sistema de Reporte de Empleados\n");
  print("Ingrese el número de empleados a registrar:");
  int n = int.parse(stdin.readLineSync()!);

  // Declarar los arreglos según lo solicitado
  List<String> nombres = [];     // Arreglo de cadena para el nombre
  List<int> edades = [];         // Arreglo de enteros para la edad
  List<double> sueldos = [];     // Arreglo de reales para el sueldo

  // Ingresar datos de los n empleados
  print("\n=== REGISTRO DE EMPLEADOS ===");
  for (var i = 0; i < n; i++) {
    print("\n--- Empleado #${i + 1} ---");
    
    // Registrar nombre
    print("Nombre del empleado:");
    String nombre = stdin.readLineSync()!;
    nombres.add(nombre);
    
    // Registrar edad
    print("Edad de $nombre:");
    int edad = int.parse(stdin.readLineSync()!);
    edades.add(edad);
    
    // Registrar sueldo
    print("Sueldo de $nombre al final del día:");
    double sueldo = double.parse(stdin.readLineSync()!);
    sueldos.add(sueldo);
  }

  // Determinar el empleado con mayor sueldo
  int indiceMayorSueldo = 0;
  double mayorSueldo = sueldos[0];
  
  for (var i = 1; i < n; i++) {
    if (sueldos[i] > mayorSueldo) {
      mayorSueldo = sueldos[i];
      indiceMayorSueldo = i;
    }
  }

  // Generar reporte
  print("\n\n=== REPORTE FINAL DEL DÍA ===");
  print("═══════════════════════════════════════════");
  print("LISTADO COMPLETO DE EMPLEADOS");
  print("═══════════════════════════════════════════");
  
  // Mostrar encabezados de la tabla
  print("No.\tNombre\t\tEdad\tSueldo");
  print("---\t------\t\t----\t------");
  
  // Mostrar cada empleado
  for (var i = 0; i < n; i++) {
    // Formatear el nombre para que ocupe máximo 12 caracteres
    String nombreFormateado = nombres[i].length > 12 
        ? nombres[i].substring(0, 12) 
        : nombres[i].padRight(12);
    
    print("${i + 1}\t$nombreFormateado\t${edades[i]}\t\$${sueldos[i].toStringAsFixed(2)}");
  }
  
  // Mostrar resumen del empleado con mayor sueldo
  print("\n═══════════════════════════════════════════");
  print("EMPLEADO CON MAYOR SUELDO");
  print("═══════════════════════════════════════════");
  print("Nombre: ${nombres[indiceMayorSueldo]}");
  print("Edad: ${edades[indiceMayorSueldo]} años");
  print("Sueldo: \$${mayorSueldo.toStringAsFixed(2)}");
  print("Posición en registro: #${indiceMayorSueldo + 1}");
  print("═══════════════════════════════════════════");
}