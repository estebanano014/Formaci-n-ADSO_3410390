import 'dart:io';

void main(List<String> arguments) {

int cantPartidosJugados = 14;
int cantAcertados = 0; // Variable tipo contador
int acertado;

for (int i = 0; i < cantPartidosJugados; i++) {
  print("Ingrese el resultado del partido ${i+1} (1 para acertado, 2 para no acertado)");
  acertado = int.parse(stdin.readLineSync()!);
  if (acertado == 1) {
    cantAcertados++; //Aumenta del contador si cummple condicion
  }
} 
print("Cantidad de partidos acertados: $cantAcertados");
}