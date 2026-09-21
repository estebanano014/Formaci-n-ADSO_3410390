import 'dart:io';

class Empleado {
  String nombre;
  int edad;
  String puesto;
  double salario;
  String tipoContrato;

  Empleado(this.nombre, this.edad, this.puesto, this.salario, this.tipoContrato);

  double aumentarSalario(double porcentaje) {
    double aumento = salario * (porcentaje / 100);
    salario = salario + aumento;
    return salario;
  }

  int cumplirAnios() {
    edad = edad + 1;
    return edad;
  }

  void cambiarPuesto(String nuevoPuesto) {
    puesto = nuevoPuesto;
  }

  void mostrarInformacionEmpleado() {
    print("Nombre: $nombre");
    print("Edad: $edad");
    print("Puesto: $puesto");
    print("Salario: $salario");
    print("Tipo contrato: $tipoContrato");
  }

  double calcularBonificacion() {
    if (tipoContrato == "Contratista") {
      return salario * 0.10;
    } else if (tipoContrato == "Temporal") {
      return salario * 0.05;
    } else if (tipoContrato == "Indefinido") {
      return salario * 0.15;
    } else {
      return 0;
    }
  }

  String getNombre() {
    return nombre;
  }

  void setNombre(String nuevoNombre) {
    nombre = nuevoNombre;
  }

  void setEdad(int nuevaEdad) {
    edad = nuevaEdad;
  }
}

List<Empleado> listaEmpleados = [];

void main(List<String> args) {
  print("taller 1 poo");
  menuPrincipal();
}

void menuPrincipal() {
  int opcion = 0;
  do {
    print("=" * 80);
    print("Bienvenido app gestion empleados");
    print("1. Agregar empleados");
    print("2. Mostrar empleados");
    print("3. Calcular bonificacion");
    print("4. Cambiar Puesto");
    print("5. Simular paso del año");
    print("6. Aumentar salario");
    print("7. Cambiar datos empleado");
    print("8. Salir");
    print("=" * 80);
    opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    switch (opcion) {
      case 1:
        agregarEmpleados();
        break;
      case 2:
        mostrarEmpleados();
        break;
      case 3:
        calcularBonificacion();
        break;
      case 4:
        cambiarPuesto();
        break;
      case 5:
        simularPasoAnio();
        break;
      case 6:
        aumentarSalario();
        break;
      case 7:
        cambiarDatosEmpleado();
        break;
      case 8:
        print("haz seleccionado salir de la app");
        break;
      default:
        print("Opcion invalida, intenta de nuevo");
    }
  } while (opcion != 8);
}

Empleado? seleccionarEmpleado() {
  if (listaEmpleados.isEmpty) {
    print("No hay empleados registrados.");
    return null;
  }
  mostrarEmpleados();
  print("ingrese el numero del empleado");
  int indiceEmpleado = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  if (indiceEmpleado < 1 || indiceEmpleado > listaEmpleados.length) {
    print("Empleado invalido, intentalo de nuevo.");
    return null;
  }
  return listaEmpleados[indiceEmpleado - 1];
}

void aumentarSalario() {
  Empleado? empleado = seleccionarEmpleado();
  if (empleado == null) return;
  print("ingrese el porcentaje de aumento");
  double porcentaje = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
  double nuevoSalario = empleado.aumentarSalario(porcentaje);
  print("Nuevo salario de ${empleado.getNombre()}: $nuevoSalario");
}

void cambiarDatosEmpleado() {
  Empleado? empleado = seleccionarEmpleado();
  if (empleado == null) return;
  print("Ingrese el nuevo nombre del empleado");
  String newNombre = stdin.readLineSync() ?? '';
  print("Ingrese la nueva edad del empleado");
  int newEdad = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  empleado.setNombre(newNombre);
  empleado.setEdad(newEdad);
  print("Datos actualizados:");
  empleado.mostrarInformacionEmpleado();
}

void simularPasoAnio() {
  if (listaEmpleados.isEmpty) {
    print("No hay empleados registrados.");
    return;
  }
  print("-" * 50);
  print("Simulando el paso de un año...");
  for (var empleado in listaEmpleados) {
    int nuevaEdad = empleado.cumplirAnios();
    print("${empleado.getNombre()} ahora tiene $nuevaEdad años.");
  }
}

void cambiarPuesto() {
  Empleado? empleado = seleccionarEmpleado();
  if (empleado == null) return;
  print("Ingrese el nuevo puesto del empleado");
  String newPuesto = stdin.readLineSync() ?? '';
  empleado.cambiarPuesto(newPuesto);
  print("El nuevo puesto es ${empleado.puesto}");
}

void calcularBonificacion() {
  if (listaEmpleados.isEmpty) {
    print("No hay empleados registrados.");
    return;
  }
  for (var i = 0; i < listaEmpleados.length; i++) {
    double bonificacionEmpleado = listaEmpleados[i].calcularBonificacion();
    String nombre = listaEmpleados[i].getNombre();
    print("-" * 50);
    print("la bonificacion para el empleado: $nombre es de $bonificacionEmpleado");
  }
}

void mostrarEmpleados() {
  if (listaEmpleados.isEmpty) {
    print("No hay empleados registrados.");
    return;
  }
  for (var i = 0; i < listaEmpleados.length; i++) {
    print("Empleado #${i + 1}");
    listaEmpleados[i].mostrarInformacionEmpleado();
  }
}

void agregarEmpleados() {
  print("ingrese nombre de la persona");
  String nombre = stdin.readLineSync()!;
  print("ingrese edad de la persona");
  int edad = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  print("ingrese tipo de contrato de la persona");
  String tipocontrato = stdin.readLineSync()!;
  print("ingrese salario de la persona");
  double salario = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
  print("ingrese puesto de la persona");
  String puesto = stdin.readLineSync()!;
  //se crea objeto mediante el constructor
  Empleado newEmpleado = Empleado(nombre, edad, puesto, salario, tipocontrato);
  listaEmpleados.add(newEmpleado);
  print("Empleado agregado correctamente.");
}



void aumentarSalario() {                              // Crea la función

  Empleado? empleado = seleccionarEmpleado();         // Selecciona un empleado

  if (empleado == null) return;                       // Si no hay empleado, termina

  print("ingrese el porcentaje de aumento");          // Pide el porcentaje

  double porcentaje =                                  // Crea la variable porcentaje
      double.tryParse(                                 // Intenta convertir a decimal
          stdin.readLineSync() ?? '') ?? 0;            // Lee el dato, si falla usa 0

  double nuevoSalario =                                // Crea la variable nuevoSalario
      empleado.aumentarSalario(porcentaje);            // Aumenta el salario

  print("Nuevo salario de ${empleado.getNombre()}: $nuevoSalario"); // Muestra resultado

}                                                     // Termina la función


void simularPasoAnio() {                              // Crea la función

  if (listaEmpleados.isEmpty) {                       // Comprueba si no hay empleados

    print("No hay empleados registrados.");           // Muestra el mensaje

    return;                                           // Termina la función

  }

  print("-" * 50);                                   // Imprime 50 guiones

  print("Simulando el paso de un año...");            // Muestra el mensaje

  for (var empleado in listaEmpleados) {              // Recorre todos los empleados

    int nuevaEdad = empleado.cumplirAnios();          // Aumenta la edad en 1

    print("${empleado.getNombre()} ahora tiene $nuevaEdad años."); // Muestra nombre y edad

  }
}