import 'dart:io';
void main(List<String> arguments) {
  print("Gestion de auxilios detransporte CPIC");

  String nombre, municipio;
  int diasAsistidos;
  double auxilioBase, tarifaFija = 5000, extra, totalRecibir;

  stdout.write("Ingrese su nombre: ");
  nombre = stdin.readLineSync()!;

  stdout.write("Ingrese su municipio de residencia: ");
  municipio = stdin.readLineSync()!.trim().toLowerCase();

  stdout.write("Ingrese la cantidad de dias que asistio al centro: ");
  diasAsistidos = int.parse(stdin.readLineSync()!);

  auxilioBase = diasAsistidos * tarifaFija;
  totalRecibir = auxilioBase;

  print("$nombre,  el total a recibir de auxilio sera \$$totalRecibir COP.");
  
    if(municipio != "manizales" ){
    
    print("Usted tendra un extra del 15% por vivIr fuera de Manizales");
    extra = auxilioBase * 0.15;

    totalRecibir = auxilioBase + extra;
  }
  print("$nombre, el total a recibir de auxilio sera \$$totalRecibir COP.");
}

