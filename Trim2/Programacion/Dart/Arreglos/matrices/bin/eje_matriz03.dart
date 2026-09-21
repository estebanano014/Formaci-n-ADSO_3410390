void main() {
  // Crea tu propio cubo 3D para guardar las notas de 2 estudiantes
  // Cada estudiante tiene 3 materias, cada materia tiene 2 notas
  
  List<List<List<double>>> notas = [
    // ESTUDIANTE 0 (Juan)
    [
      [4.5, 3.8],  // Matemáticas: 2 notas
      [4.0, 4.2],  // Español: 2 notas
      [3.5, 3.9],  // Ciencias: 2 notas
    ],
    // ESTUDIANTE 1 (María)
    [
      [5.0, 4.8],  // Matemáticas: 2 notas
      [4.5, 4.7],  // Español: 2 notas
      [4.8, 5.0],  // Ciencias: 2 notas
    ],
  ];
  
  print("=== NOTAS DE ESTUDIANTES ===\n");
  
  // Mostrar notas de Juan (estudiante 0)
  print("📚 NOTAS DE JUAN:");
  print("Matemáticas: ${notas[0][0]}");  // [4.5, 3.8]
  print("Español: ${notas[0][1]}");      // [4.0, 4.2]
  print("Ciencias: ${notas[0][2]}");     // [3.5, 3.9]
  
  print("\n📚 NOTAS DE MARÍA:");
  print("Matemáticas: ${notas[1][0]}");  // [5.0, 4.8]
  print("Español: ${notas[1][1]}");      // [4.5, 4.7]
  print("Ciencias: ${notas[1][2]}");     // [4.8, 5.0]
  
  // Calcular promedio de Juan en Matemáticas
  double nota1Juan = notas[0][0][0];  // 4.5
  double nota2Juan = notas[0][0][1];  // 3.8
  double promedioJuan = (nota1Juan + nota2Juan) / 2;
  
  print("\n📊 PROMEDIOS:");
  print("Promedio de Juan en Matemáticas: $promedioJuan");
  
  // Mostrar una nota específica
  print("\nNota específica: ${notas[1][2][1]}"); // María, Ciencias, segunda nota = 5.0
}