import 'dart:io';

void main(List<String> arguments) {
  //El sistema de seguridad Industri-ID realiza una doble validación para permitir el ingreso al complejo del SENA. Primero, solicita el estado de la tarjeta RFID del usuario (ingrese 1 para Activa, 0 para Inactiva). Si la tarjeta está activa, el sistema hace una segunda pregunta internamente para evaluar el rol ("instructor" o "aprendiz"). Si es instructor, tiene "Acceso total a todos los bloques". Si es aprendiz, tiene "Acceso limitado a los ambientes de formación". Si la tarjeta RFID está inactiva desde el principio, el sistema omite el rol y simplemente muestra "Acceso Denegado: Tarjeta bloqueada".
  print('El sistema de seguridad Industri-ID');

  int estadoTarjeta;
  String rol;

  stdout.write('Ingrese el estado de la tarjeta RFID (1 para Activa, 0 para Inactiva): ');
  estadoTarjeta = int.parse(stdin.readLineSync()!);
  stdout.write('Ingrese su rol (instructor o aprendiz): ');
  rol = stdin.readLineSync()!.trim().toLowerCase();

    if (rol == 'instructor') {
      print('Acceso total a todos los bloques.');
    } else if (rol == 'aprendiz') {
      print('Acceso limitado a los ambientes de formación.');
    } else if (estadoTarjeta == 0) {
      print('Acceso Denegado: Tarjeta bloqueada.');
    } else {
      print('Rol no reconocido. Acceso Denegado.');
    }
  }
