import 'dart:io';

void main(List<String> arguments) {
  //El sistema de seguridad Industri-ID realiza una validación exhaustiva para el ingreso al complejo del SENA. a. Primer nivel: Solicita el estado de la tarjeta RFID (1 para Activa, 0 para Inactiva). Si está inactiva, bloquea el acceso inmediatamente sin preguntar más datos. b. Segundo nivel: Si la tarjeta está activa, solicita el rol del usuario ("instructor", "administrativo" o "aprendiz"). i. Si es "instructor" o "administrativo", se le concede acceso total de forma inmediata (acceso 24/7). ii. Si es "aprendiz", el sistema debe hacer una validación adicional. c. Tercer nivel (Anidado dentro de aprendiz): El sistema solicita ingresar la hora actual en formato militar (0 a 23). Si la hora está entre las 6 y las 18 (6:00 AM a 6:00 PM), se le permite el ingreso a los ambientes de formación. Si está fuera de ese rango, se le deniega el acceso por horario no autorizado. Desarrolle el algoritmo utilizando condicionales anidados para resolver esta lógica de seguridad.
  print(' El sistema de seguridad Industri-ID');

  int estadoTarjeta;
  String rol;
  int horaActual;

  stdout.write('Ingrese el estado de la tarjeta RFID (1 para Activa, 0 para Inactiva): ');
  estadoTarjeta = int.parse(stdin.readLineSync()!);

  if (estadoTarjeta == 0) {
    print('Acceso Denegado: Tarjeta bloqueada.');
  } else {
    stdout.write('Ingrese su rol (instructor, administrativo o aprendiz): ');
    rol = stdin.readLineSync()!.trim().toLowerCase();

    if (rol == 'instructor' || rol == 'administrativo') {
      print('Acceso total de forma inmediata (acceso 24/7).');
    } else if (rol == 'aprendiz') {
      stdout.write('Ingrese la hora actual en formato militar (0 a 23): ');
      horaActual = int.parse(stdin.readLineSync()!);

      if (horaActual >= 6 && horaActual <= 18) {
        print('Acceso permitido a los ambientes de formación.');
      } else {
        print('Acceso denegado por horario no autorizado.');
      }
    } else {
      print('Rol no reconocido. Acceso Denegado.');
    }
  } 
}
