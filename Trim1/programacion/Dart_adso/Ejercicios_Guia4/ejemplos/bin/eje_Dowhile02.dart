/*EJE.02: Se requiere un validador de contraseña segura la cual ingresada por el usuaario
tengo mas de 8 caracteres */

import 'dart:io';

void main(List<String> args) {
  String password;

  do {
    print("Ingrese una contraseña valida");
    password = stdin.readLineSync()!;
    print("Longitud de la contraseña");

    if (password.length < 8) {
      print("Su contraseña no es segura, ingresela de nuevo");
    }
  } while (password.length < 8);
  print("Su contraseña se ha registrado con exito");
}
