import 'dart:io';
import 'dart:math';

// Clase para representar un Tema de Exposición
class TemaExposicion {
  int id;
  String titulo;
  String descripcion;
  int cantidadEstudiantes;
  List<String> estudiantesAsignados;

  TemaExposicion({
    required this.id,
    required this.titulo,
    required this.descripcion,
    required this.cantidadEstudiantes,
    this.estudiantesAsignados = const [],
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'titulo': titulo,
      'descripcion': descripcion,
      'cantidadEstudiantes': cantidadEstudiantes,
      'estudiantesAsignados': estudiantesAsignados,
    };
  }

  @override
  String toString() {
    return 'Tema $id: $titulo\nDescripción: $descripcion\nEstudiantes requeridos: $cantidadEstudiantes';
  }
}

// Clase para representar un Estudiante
class Estudiante {
  int id;
  String nombreCompleto;
  bool asignado;

  Estudiante({
    required this.id,
    required this.nombreCompleto,
    this.asignado = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nombreCompleto': nombreCompleto,
      'asignado': asignado,
    };
  }

  @override
  String toString() {
    return 'Estudiante $id: $nombreCompleto';
  }
}

// Clase principal de la aplicación
class GestionExposiciones {
  List<TemaExposicion> temas = [];
  List<Estudiante> estudiantes = [];
  int nextTemaId = 1;
  int nextEstudianteId = 1;
  Random random = Random();

  // Método para precargar datos de prueba
  void precargarDatos() {
    // Precargar temas
    temas = [
      TemaExposicion(
        id: nextTemaId++,
        titulo: 'Programación Orientada a Objetos',
        descripcion: '¿Qué es la POO? Características principales de la POO',
        cantidadEstudiantes: 3,
      ),
      TemaExposicion(
        id: nextTemaId++,
        titulo: 'Paradigmas de Programación',
        descripcion: 'Diferencias entre POO y programación estructurada. Otros paradigmas',
        cantidadEstudiantes: 3,
      ),
      TemaExposicion(
        id: nextTemaId++,
        titulo: 'Objetos y Clases',
        descripcion: '¿Qué es un objeto? ¿Qué es una clase? Diferencias entre ambos',
        cantidadEstudiantes: 3,
      ),
      TemaExposicion(
        id: nextTemaId++,
        titulo: 'Abstracción',
        descripcion: '¿Qué es abstracción? Clases abstractas vs interfaces',
        cantidadEstudiantes: 3,
      ),
      TemaExposicion(
        id: nextTemaId++,
        titulo: 'Encapsulamiento',
        descripcion: 'Modificadores de acceso, constructores, destructores, miembros estáticos',
        cantidadEstudiantes: 3,
      ),
      TemaExposicion(
        id: nextTemaId++,
        titulo: 'Herencia',
        descripcion: '¿Qué es herencia? Ejemplo gráfico y funcional',
        cantidadEstudiantes: 4,
      ),
      TemaExposicion(
        id: nextTemaId++,
        titulo: 'Polimorfismo',
        descripcion: 'Sobrescritura vs sobrecarga. Ejemplo gráfico y funcional',
        cantidadEstudiantes: 4,
      ),
      TemaExposicion(
        id: nextTemaId++,
        titulo: 'Diagramas UML',
        descripcion: 'Principales diagramas UML. Relaciones entre clases',
        cantidadEstudiantes: 4,
      ),
    ];

    // Precargar estudiantes
    estudiantes = [
      Estudiante(id: nextEstudianteId++, nombreCompleto: 'Ana García López'),
      Estudiante(id: nextEstudianteId++, nombreCompleto: 'Carlos Martínez Ruiz'),
      Estudiante(id: nextEstudianteId++, nombreCompleto: 'Diana Fernández Torres'),
      Estudiante(id: nextEstudianteId++, nombreCompleto: 'Eduardo Sánchez Gómez'),
      Estudiante(id: nextEstudianteId++, nombreCompleto: 'Fernanda Castro Morales'),
      Estudiante(id: nextEstudianteId++, nombreCompleto: 'Gabriel Rodríguez Díaz'),
      Estudiante(id: nextEstudianteId++, nombreCompleto: 'Helena Ortiz Vargas'),
      Estudiante(id: nextEstudianteId++, nombreCompleto: 'Ignacio Ramírez Cruz'),
      Estudiante(id: nextEstudianteId++, nombreCompleto: 'Julia Mendoza Flores'),
      Estudiante(id: nextEstudianteId++, nombreCompleto: 'Kevin Herrera Reyes'),
      Estudiante(id: nextEstudianteId++, nombreCompleto: 'Laura Aguilar Peña'),
      Estudiante(id: nextEstudianteId++, nombreCompleto: 'Miguel Torres Ríos'),
      Estudiante(id: nextEstudianteId++, nombreCompleto: 'Natalia Vargas Medina'),
      Estudiante(id: nextEstudianteId++, nombreCompleto: 'Oscar Guzmán Soto'),
      Estudiante(id: nextEstudianteId++, nombreCompleto: 'Patricia Campos Luna'),
      Estudiante(id: nextEstudianteId++, nombreCompleto: 'Raúl Domínguez Vega'),
      Estudiante(id: nextEstudianteId++, nombreCompleto: 'Sara Espinoza Rojas'),
      Estudiante(id: nextEstudianteId++, nombreCompleto: 'Tomás Fuentes León'),
      Estudiante(id: nextEstudianteId++, nombreCompleto: 'Úrsula Guerrero Ponce'),
      Estudiante(id: nextEstudianteId++, nombreCompleto: 'Víctor Ibarra Salas'),
      Estudiante(id: nextEstudianteId++, nombreCompleto: 'Wendy Jiménez Cabrera'),
      Estudiante(id: nextEstudianteId++, nombreCompleto: 'Xavier Luna Delgado'),
      Estudiante(id: nextEstudianteId++, nombreCompleto: 'Yolanda Márquez Ríos'),
      Estudiante(id: nextEstudianteId++, nombreCompleto: 'Zacarías Navarro Pineda'),
      Estudiante(id: nextEstudianteId++, nombreCompleto: 'Adriana Ochoa Santos'),
      Estudiante(id: nextEstudianteId++, nombreCompleto: 'Bruno Pérez Villarreal'),
      Estudiante(id: nextEstudianteId++, nombreCompleto: 'Cecilia Quintero Zamora'),
    ];

    print('✓ Datos de prueba precargados exitosamente');
    print('  - ${temas.length} temas de exposición');
    print('  - ${estudiantes.length} estudiantes');
  }

  // CRUD TEMAS
  void crearTema() {
    print('\n=== CREAR NUEVO TEMA ===');
    print('Ingrese el título del tema:');
    String titulo = stdin.readLineSync() ?? '';
    
    if (titulo.isEmpty) {
      print('✗ El título no puede estar vacío');
      return;
    }

    print('Ingrese la descripción del tema:');
    String descripcion = stdin.readLineSync() ?? '';

    print('Ingrese la cantidad de estudiantes requerida:');
    int? cantidad;
    try {
      cantidad = int.parse(stdin.readLineSync() ?? '');
      if (cantidad <= 0) {
        print('✗ La cantidad debe ser mayor a 0');
        return;
      }
    } catch (e) {
      print('✗ Por favor ingrese un número válido');
      return;
    }

    temas.add(TemaExposicion(
      id: nextTemaId++,
      titulo: titulo,
      descripcion: descripcion,
      cantidadEstudiantes: cantidad,
    ));
    print('✓ Tema creado exitosamente');
  }

  void mostrarTemas() {
    print('\n=== LISTA DE TEMAS ===');
    if (temas.isEmpty) {
      print('No hay temas registrados');
      return;
    }

    for (var tema in temas) {
      print('\n${tema.toString()}');
      if (tema.estudiantesAsignados.isNotEmpty) {
        print('Estudiantes asignados:');
        for (var estudiante in tema.estudiantesAsignados) {
          print('  - $estudiante');
        }
      }
    }
  }

  void editarTema() {
    print('\n=== EDITAR TEMA ===');
    if (temas.isEmpty) {
      print('No hay temas para editar');
      return;
    }

    mostrarTemas();
    print('\nIngrese el ID del tema a editar:');
    int? id;
    try {
      id = int.parse(stdin.readLineSync() ?? '');
    } catch (e) {
      print('✗ ID inválido');
      return;
    }

    int index = temas.indexWhere((t) => t.id == id);
    if (index == -1) {
      print('✗ Tema no encontrado');
      return;
    }

    print('Ingrese nuevo título (Enter para mantener "${temas[index].titulo}"):');
    String nuevoTitulo = stdin.readLineSync() ?? '';
    if (nuevoTitulo.isNotEmpty) {
      temas[index].titulo = nuevoTitulo;
    }

    print('Ingrese nueva descripción (Enter para mantener):');
    String nuevaDescripcion = stdin.readLineSync() ?? '';
    if (nuevaDescripcion.isNotEmpty) {
      temas[index].descripcion = nuevaDescripcion;
    }

    print('Ingrese nueva cantidad de estudiantes (Enter para mantener ${temas[index].cantidadEstudiantes}):');
    String nuevaCantidad = stdin.readLineSync() ?? '';
    if (nuevaCantidad.isNotEmpty) {
      try {
        int cantidad = int.parse(nuevaCantidad);
        if (cantidad > 0) {
          temas[index].cantidadEstudiantes = cantidad;
        }
      } catch (e) {
        print('✗ Cantidad inválida, se mantiene la anterior');
      }
    }

    print('✓ Tema actualizado exitosamente');
  }

  void eliminarTema() {
    print('\n=== ELIMINAR TEMA ===');
    if (temas.isEmpty) {
      print('No hay temas para eliminar');
      return;
    }

    mostrarTemas();
    print('\nIngrese el ID del tema a eliminar:');
    int? id;
    try {
      id = int.parse(stdin.readLineSync() ?? '');
    } catch (e) {
      print('✗ ID inválido');
      return;
    }

    int index = temas.indexWhere((t) => t.id == id);
    if (index == -1) {
      print('✗ Tema no encontrado');
      return;
    }

    print('¿Está seguro de eliminar el tema "${temas[index].titulo}"? (s/n):');
    String confirmacion = stdin.readLineSync()?.toLowerCase() ?? '';
    if (confirmacion == 's') {
      temas.removeAt(index);
      print('✓ Tema eliminado exitosamente');
    } else {
      print('Operación cancelada');
    }
  }

  // CRUD ESTUDIANTES
  void crearEstudiante() {
    print('\n=== CREAR NUEVO ESTUDIANTE ===');
    print('Ingrese el nombre completo del estudiante:');
    String nombre = stdin.readLineSync() ?? '';
    
    if (nombre.isEmpty) {
      print('✗ El nombre no puede estar vacío');
      return;
    }

    // Verificar que no exista un estudiante con el mismo nombre
    bool existe = estudiantes.any((e) => 
      e.nombreCompleto.toLowerCase() == nombre.toLowerCase());
    
    if (existe) {
      print('✗ Ya existe un estudiante con ese nombre');
      return;
    }

    estudiantes.add(Estudiante(
      id: nextEstudianteId++,
      nombreCompleto: nombre,
    ));
    print('✓ Estudiante creado exitosamente');
  }

  void mostrarEstudiantes() {
    print('\n=== LISTA DE ESTUDIANTES ===');
    if (estudiantes.isEmpty) {
      print('No hay estudiantes registrados');
      return;
    }

    for (var estudiante in estudiantes) {
      String estado = estudiante.asignado ? '[ASIGNADO]' : '[SIN ASIGNAR]';
      print('${estudiante.toString()} $estado');
    }
  }

  void editarEstudiante() {
    print('\n=== EDITAR ESTUDIANTE ===');
    if (estudiantes.isEmpty) {
      print('No hay estudiantes para editar');
      return;
    }

    mostrarEstudiantes();
    print('\nIngrese el ID del estudiante a editar:');
    int? id;
    try {
      id = int.parse(stdin.readLineSync() ?? '');
    } catch (e) {
      print('✗ ID inválido');
      return;
    }

    int index = estudiantes.indexWhere((e) => e.id == id);
    if (index == -1) {
      print('✗ Estudiante no encontrado');
      return;
    }

    print('Ingrese nuevo nombre completo (Enter para mantener "${estudiantes[index].nombreCompleto}"):');
    String nuevoNombre = stdin.readLineSync() ?? '';
    if (nuevoNombre.isNotEmpty) {
      estudiantes[index].nombreCompleto = nuevoNombre;
      print('✓ Estudiante actualizado exitosamente');
    } else {
      print('No se realizaron cambios');
    }
  }

  void eliminarEstudiante() {
    print('\n=== ELIMINAR ESTUDIANTE ===');
    if (estudiantes.isEmpty) {
      print('No hay estudiantes para eliminar');
      return;
    }

    mostrarEstudiantes();
    print('\nIngrese el ID del estudiante a eliminar:');
    int? id;
    try {
      id = int.parse(stdin.readLineSync() ?? '');
    } catch (e) {
      print('✗ ID inválido');
      return;
    }

    int index = estudiantes.indexWhere((e) => e.id == id);
    if (index == -1) {
      print('✗ Estudiante no encontrado');
      return;
    }

    print('¿Está seguro de eliminar al estudiante "${estudiantes[index].nombreCompleto}"? (s/n):');
    String confirmacion = stdin.readLineSync()?.toLowerCase() ?? '';
    if (confirmacion == 's') {
      estudiantes.removeAt(index);
      print('✓ Estudiante eliminado exitosamente');
    } else {
      print('Operación cancelada');
    }
  }

  // Asignación aleatoria
  void asignarExposicionesAleatorias() {
    print('\n=== ASIGNACIÓN ALEATORIA DE EXPOSICIONES ===');
    
    // Validaciones
    if (temas.isEmpty) {
      print('✗ No hay temas registrados para asignar');
      return;
    }

    if (estudiantes.isEmpty) {
      print('✗ No hay estudiantes registrados para asignar');
      return;
    }

    int totalEstudiantesRequeridos = temas.fold(0, (sum, tema) => sum + tema.cantidadEstudiantes);
    
    if (estudiantes.length < totalEstudiantesRequeridos) {
      print('✗ No hay suficientes estudiantes');
      print('  Estudiantes disponibles: ${estudiantes.length}');
      print('  Estudiantes requeridos: $totalEstudiantesRequeridos');
      print('  Faltan: ${totalEstudiantesRequeridos - estudiantes.length} estudiantes');
      return;
    }

    // Reiniciar asignaciones
    for (var tema in temas) {
      tema.estudiantesAsignados = [];
    }
    for (var estudiante in estudiantes) {
      estudiante.asignado = false;
    }

    // Crear lista de estudiantes disponibles (copia)
    List<Estudiante> disponibles = List.from(estudiantes);
    
    // Mezclar aleatoriamente
    disponibles.shuffle(random);

    int indexEstudiante = 0;
    
    // Asignar estudiantes a cada tema
    for (var tema in temas) {
      for (int i = 0; i < tema.cantidadEstudiantes; i++) {
        if (indexEstudiante < disponibles.length) {
          Estudiante estudiante = disponibles[indexEstudiante];
          tema.estudiantesAsignados.add(estudiante.nombreCompleto);
          estudiante.asignado = true;
          indexEstudiante++;
        }
      }
    }

    print('✓ Asignación realizada exitosamente');
    mostrarAsignaciones();
  }

  void mostrarAsignaciones() {
    print('\n=== ASIGNACIONES ACTUALES ===');
    if (temas.isEmpty) {
      print('No hay temas registrados');
      return;
    }

    bool hayAsignaciones = temas.any((t) => t.estudiantesAsignados.isNotEmpty);
    if (!hayAsignaciones) {
      print('Aún no se han realizado asignaciones');
      return;
    }

    for (var tema in temas) {
      print('\n${tema.toString()}');
      if (tema.estudiantesAsignados.isNotEmpty) {
        print('Estudiantes asignados:');
        for (var estudiante in tema.estudiantesAsignados) {
          print('  • $estudiante');
        }
      } else {
        print('  Sin estudiantes asignados');
      }
    }

    // Mostrar estudiantes sin asignar
    List<Estudiante> sinAsignar = estudiantes.where((e) => !e.asignado).toList();
    if (sinAsignar.isNotEmpty) {
      print('\nEstudiantes sin asignar:');
      for (var estudiante in sinAsignar) {
        print('  • ${estudiante.nombreCompleto}');
      }
    }
  }

  void mostrarResumen() {
    print('\n=== RESUMEN GENERAL ===');
    print('Temas de exposición: ${temas.length}');
    print('Estudiantes registrados: ${estudiantes.length}');
    
    int totalRequeridos = temas.fold(0, (sum, tema) => sum + tema.cantidadEstudiantes);
    print('Total estudiantes requeridos: $totalRequeridos');
    
    int asignados = estudiantes.where((e) => e.asignado).length;
    print('Estudiantes asignados: $asignados');
    print('Estudiantes sin asignar: ${estudiantes.length - asignados}');
  }
}

// Función principal
void main() {
  GestionExposiciones app = GestionExposiciones();
  int opcion = 0;

  print('============================================');
  print('  SISTEMA DE GESTIÓN DE EXPOSICIONES');
  print('============================================');

  do {
    print('\n=== MENÚ PRINCIPAL ===');
    print('1. Precargar datos de prueba');
    print('2. Gestionar Temas');
    print('3. Gestionar Estudiantes');
    print('4. Asignar exposiciones aleatorias');
    print('5. Mostrar asignaciones');
    print('6. Mostrar resumen general');
    print('0. Salir');
    print('Seleccione una opción:');

    try {
      opcion = int.parse(stdin.readLineSync() ?? '');
    } catch (e) {
      print('✗ Por favor ingrese un número válido');
      continue;
    }

    switch (opcion) {
      case 1:
        app.precargarDatos();
        break;

      case 2:
        // Submenú de temas
        int opcionTemas = 0;
        do {
          print('\n=== GESTIÓN DE TEMAS ===');
          print('1. Crear tema');
          print('2. Mostrar temas');
          print('3. Editar tema');
          print('4. Eliminar tema');
          print('0. Volver al menú principal');
          print('Seleccione una opción:');

          try {
            opcionTemas = int.parse(stdin.readLineSync() ?? '');
          } catch (e) {
            print('✗ Por favor ingrese un número válido');
            continue;
          }

          switch (opcionTemas) {
            case 1:
              app.crearTema();
              break;
            case 2:
              app.mostrarTemas();
              break;
            case 3:
              app.editarTema();
              break;
            case 4:
              app.eliminarTema();
              break;
            case 0:
              print('Volviendo al menú principal...');
              break;
            default:
              print('✗ Opción no válida');
          }
        } while (opcionTemas != 0);
        break;

      case 3:
        // Submenú de estudiantes
        int opcionEstudiantes = 0;
        do {
          print('\n=== GESTIÓN DE ESTUDIANTES ===');
          print('1. Crear estudiante');
          print('2. Mostrar estudiantes');
          print('3. Editar estudiante');
          print('4. Eliminar estudiante');
          print('0. Volver al menú principal');
          print('Seleccione una opción:');

          try {
            opcionEstudiantes = int.parse(stdin.readLineSync() ?? '');
          } catch (e) {
            print('✗ Por favor ingrese un número válido');
            continue;
          }

          switch (opcionEstudiantes) {
            case 1:
              app.crearEstudiante();
              break;
            case 2:
              app.mostrarEstudiantes();
              break;
            case 3:
              app.editarEstudiante();
              break;
            case 4:
              app.eliminarEstudiante();
              break;
            case 0:
              print('Volviendo al menú principal...');
              break;
            default:
              print('✗ Opción no válida');
          }
        } while (opcionEstudiantes != 0);
        break;

      case 4:
        app.asignarExposicionesAleatorias();
        break;

      case 5:
        app.mostrarAsignaciones();
        break;

      case 6:
        app.mostrarResumen();
        break;

      case 0:
        print('¡Gracias por usar el sistema!');
        break;

      default:
        print('✗ Opción no válida');
    }
  } while (opcion != 0);
}