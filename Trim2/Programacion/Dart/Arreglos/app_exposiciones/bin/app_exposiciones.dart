import 'dart:io';
import 'dart:math';

List<String> temas = [];
List<int> cupos = [];
List<String> estudiantes = [];
List<String> aleatorioEstud = [];
List<List<String>> asignaciones = [];

void main(List<String> arguments) {
  menuPrincipal();
}

void menuPrincipal() {
  int opcion = 0;
  do {
    print("*" * 50);
    print("1. Gestión de temas y cupos");
    print("2. Gestión de estudiantes");
    print("3. Generar exposiciones aleatorias");
    print("4. Visualizar temas y estudiantes asignados");
    print("5. Precargar datos de prueba");
    print("6. Salir");
  
  print("Digite la opción deseada");
  opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  switch (opcion) {
    case 1:
      gestionTemasCupos();
      break;
    case 2:
      gestionEstudiantes();
      break;
    case 3:
      generarExposiciones();
      break;
    case 4:
      visualizarExposiciones();
      break;
    case 5:
      precargarDatosPrueba();
      break;
    case 6:
      print("Has salido de la aplicación");
      break;
    default:
      print("Opción incorrecta");
  }
  } while (opcion != 6);
}

void gestionTemasCupos() {
  int opcion = 0;
  do {
    print("*" * 50);
    print("1. Listar temas");
    print("2. Crear temas");
    print("3. Editar temas");
    print("4. Eliminar temas");
    print("5. SALIR");

  print("Ingrese la opción deseada");
  opcion = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
  switch (opcion) {
    case 1:
      listarTema();
      break;
    case 2:
      crearTema();
      break;
    case 3:
      editarTema();
      break;
    case 4:
      eliminarTema();
      break;
    case 5:
      
      break;
    default:
      print("Salir del menú");
  }
  } while (opcion != 5);
}
void gestionEstudiantes() {
  int opcion = 0;
  do {
    print("*" * 50);
    print("1. Listar estudiantes");
    print("2. Crear estudiantes");
    print("3. Editar estudiantes");
    print("4. Eliminar estudiantes");
    print("5. SALIR");

  print("Ingrese la opción deseada");
  opcion = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
  switch (opcion) {
    case 1:
      listarEstudiante();
      break;
    case 2:
      crearEstudiante();
      break;
    case 3:
      editarEstudiante();
      break;
    case 4:
      eliminarEstudiante();
      break;
    case 5:
      
      break;
    default:
      print("Salir del menú");
  }
  } while (opcion != 5);
}
void generarExposiciones() {
  print("-------------- GENERANDO EXPOSICIONES ALEATORIAS -------------------");
  if (temas.isEmpty) {
    print("No hay temas registrados");
    return;
  }
  if (estudiantes.isEmpty) {
    print("No hay estudiantes");
    return;
  }
  int totalEstudiantes = estudiantes.length;
  int totalCupos = 0;
  for (var element in cupos) { // S e recorre el vector de cupospara saber el total
    totalCupos += element;
  }
  print("Total estudiantes: $totalEstudiantes");
  print("Total cupos: $totalCupos");
  if (totalCupos != totalEstudiantes) {
    int diferencia = 0;
    print("No se puede realizar la asignación");
    if (totalEstudiantes > totalCupos) {
      diferencia = totalEstudiantes - totalCupos;
      print("Faltan cupos por asignar");
    }else{
      diferencia = totalCupos - totalEstudiantes;
      print("Faltan $diferencia estudiantes por crear");
    }
    return;
  }
  //Se crea una copia del vector estudinates
  aleatorioEstud = List.from(estudiantes);
  //Mezclar aleatoriamente el vector
  aleatorioEstud.shuffle(Random());
      asignaciones = [];
      int puntero = 0;
  for (var i = 0; i < temas.length; i++) {
    int cantidad = cupos[i];
    List<String> grupoAsignado = [];
    for (var j = 0; j < cantidad; j++) {
      grupoAsignado.add(aleatorioEstud[puntero]);
      puntero ++;
    }
    asignaciones.add(grupoAsignado);
  }
  //Se llama al metodo para visualizar las asignaciones
  visualizarExposiciones();
}
void visualizarExposiciones() {
  print("---------------- ASIGNACIÓN DE EXPOSICIONES -------------------");
  if (asignaciones.isEmpty) {
    print("No se han hecho signaciones para las exposiciones");
    return;
  }
  print("*"*50);
  for (var i = 0; i < asignaciones.length; i++) {
    print("Tema: ${temas[i]}");
    print("*"*50);
    print("Estudiantes asignados: ");
    for (var j = 0; j < asignaciones[i].length; j++) {
      print("${asignaciones[i][j]}");
    }
    print("-"*50);
  }
}
void precargarDatosPrueba() {
  temas = [
    '¿Qué es la programación Orientada a Objetos? ¿Cuáles son las características principales de la POO?',
    '¿Cuál es la diferencia entre POO y programación estructurada? ¿Qué otros paradigmas hay y en qué consisten?',
    '¿Qué es un objeto? ¿Qué es una Clase? ¿Cuál es la diferencia entre Objeto y Clase?',
    '¿Qué es abstracción? Tener en cuenta: Clases Abstractas vs. Interfaces.',
    '¿Qué es encapsulamiento? Modificadores de acceso, constructores/destructores, miembros estáticos.',
    '¿Qué es herencia y un ejemplo gráfico y funcional?',
    '¿Qué es polimorfismo y un ejemplo gráfico y funcional? (Overriding vs. Overloading)',
    '¿Cuáles son los principales diagramas de UML? Relaciones entre clases en UML y código.'
  ];
  cupos = [3, 3, 3, 3, 3, 4, 4, 4]; // Total cupos = 27 estudiantes
  estudiantes = [
    'Alejandro Rua',
    'Stiven Gonzalez',
    'Miguel Angel Garcia',
    'Leider Serna',
    'Maria Jose Osorio',
    'Mateo Pescador',
    'Mateo Henao',
    'Angie Veronica Carvajal',
    'Juan Jose Bernal',
    'Juan Diego Giraldo',
    'Miguel Angel Cortes',
    'Valeria Murillo',
    'Yulieth Luna',
    'Jean Karlo Velazquez',
    'Camilo Morales',
    'Thomas Toro',
    'Johan Sebastian Zambrano',
    'Susana Castro',
    'Karol Daian Navia',
    'David Ramirez',
    'Santiago Gomez',
    'Camilo Gil',
    'Hector Alejandro Jimenez',
    'Esteban Quiceno',
    'Valeria Arenas',
    'Jeronimo Medina',
    'Juan Jose Lopez',
  ];
  asignaciones=[];
  print("Datos precargados con exito");
}


//Funciones para TEMAS
void crearTema() {
  String tema = "";
  int cupo = 0;
  print("Ingrese el nuevo tema");
  tema = stdin.readLineSync() ?? "";
  print("Ingrese la cantidad de personas para el nuevo tema: $tema");
  cupo = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
  temas.add(tema); //Se añade tema al vector de TEMAS
  cupos.add(cupo); //Se añade el cupo al vector de CUPOS
}
void listarTema() {
  print("Listado de temas");
  if (temas.isEmpty) {
    print("No existen temas");
    return;
  }
  print("*"*50);
  for (var i = 0; i < temas.length; i++) {
    print("${temas[i]} - Cupos: ${cupos[i]}");
  }
  print("*"*50);
}
void editarTema() {
  listarTema();
  print("Cuál tema quiere editar?");
  int opcion = int.tryParse(stdin.readLineSync()?? "") ?? 0;
  if (opcion == null || opcion < 1 || opcion > temas.length) {
    print("El tema a editar es inválido");
    return;
  }
  int indice = opcion - 1;
  print("Digite el nuevo nombre para el tema ${temas[indice]}. Solo presiona ENTER si desea que continúe el mismo nombre");
  String nuevoTema = stdin.readLineSync() ?? "";
  if (nuevoTema != null && nuevoTema.isNotEmpty) {
  temas[indice] = nuevoTema; //Se reemplaza el tema    
  }
  print("Digite el nuevo cupo del tema: $temas[indice]");
  int newCupo = int.tryParse(stdin.readLineSync()?? "")?? 0;
  if (newCupo > 0) {
    cupos[indice] = newCupo;
  } 
}
void eliminarTema() {
  listarTema();
  if (temas.isEmpty) return; //Si no hay temas
  print("Seleccione el tema a eliminar");
  int opcion = int.tryParse(stdin.readLineSync()?? "") ?? 0;
  if (opcion <1 || opcion>temas.length) {
    print("Tema incorrecto");
    return;
  }
  int indice = opcion -1;
  temas.removeAt(indice); //Se elimina el tema requerido
  cupos.removeAt(indice); //Se elimina el cupo correpondiente
  print("El tema ha sido eliminado exitosamente");
}

//Funciones para estudiantes

void crearEstudiante() {
  String estudiante = "";
  print("Ingrese el nuevo estudiante");
  estudiante = stdin.readLineSync() ?? "";
  estudiantes.add(estudiante); //Se añade estudiante al vector ESTUDIANTES
}
void listarEstudiante() {
  print("Listado de estudiantes");
  if (estudiantes.isEmpty) {
    print("No existen estudiantes");
    return;
  }
  print("*"*50);
  for (var i = 0; i < estudiantes.length; i++) {
    print("${[i+1]}  ${estudiantes[i]}");
  }
  print("*"*50);
}
void editarEstudiante() {
  listarEstudiante();
  print("Cuál estudiante quiere editar?");
  int opcion = int.tryParse(stdin.readLineSync()?? "") ?? 0;
  if ( opcion < 1 || opcion > estudiantes.length) {
    print("El estudiante a editar es inválido");
    return;
  }
  int indice = opcion - 1;
  print("Digite el nuevo nombre para el estudiante ${estudiantes[indice]}. Solo presiona ENTER si desea que continúe el mismo nombre");
  String nuevoEstudiante = stdin.readLineSync() ?? "";
  if (nuevoEstudiante != null && nuevoEstudiante.isNotEmpty) {
  estudiantes[indice] = nuevoEstudiante; //Se reemplaza el estudinate    
  } 
  print("El estudiante fue editado con exito");
}
void eliminarEstudiante() {
  listarEstudiante();
  if (estudiantes.isEmpty) return; //Si no hay Estudiantes
  print("Seleccione el tema a eliminar");
  int opcion = int.tryParse(stdin.readLineSync()?? "") ?? 0;
  if (opcion <1 || opcion>estudiantes.length) {
    print("Estudiante incorrecto");
    return;
  }
  int indice = opcion -1;
  estudiantes.removeAt(indice); //Se elimina el estudiante requerido
  print("El estudiante ha sido eliminado exitosamente");

}