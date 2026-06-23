import 'dart:io';

void main(List<String> args) {
  /*Para un modulo del proyecto de identificacion fisica y digital
(IndustID), necesitas validar un pin de seguridad de 4 digitos.
Escribe un programa que simule el ingreso de contraseñas de un usuario.
*/
    String pinCorrecto = "9220";
    String pinIngresado;
    bool accesoConcedido = false;
    int limiteIngreso = 3;
    int intento = 1;

    while (intento <= limiteIngreso && accesoConcedido == false) {
      print("Ingrese la contraseña de acceso");
      pinIngresado = stdin.readLineSync()!;

      if (pinIngresado == pinCorrecto) {
        accesoConcedido = true;
        print("Acceso concedido! Puede ingresar");
      } else {
        print("El pin es incorrecto");
      }

      intento++;
    }

    if (intento > 3) {
      print("Acceso negado, supero el limite de ingresos");
    }
  }

  /*while (accesoConcedido == false) {
  print("Ingrese la contraseña de acceso");
  pinIngresado = stdin.readLineSync()!;
  if(pinIngresado == pinCorrecto) {
    print("Accseo concedido! Puede ingresar");
    accesoConcedido = true;
  }else {
    print("El Pin es incorrecto");
  }
}*/

