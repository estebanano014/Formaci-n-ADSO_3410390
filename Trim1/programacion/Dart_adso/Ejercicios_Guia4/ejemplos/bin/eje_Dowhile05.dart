/* Crear las siguientes opciones de una aplicación bancaria.
Cada una de ellas debe ser funcional y cumplir con todas las validaciones requeridas:
MENU APP BANCARIA
1.Consultar saldo
2.Ingresar fondos
3.Realizar retiros
4.Recarga de celular
5.Transferencia a otra cuenta
5.salir

- La aplicaion debe simmular un login de ususario
- La app no debe permitir ingresar numeros negativos
- No pueden haber saldos negativos
- Se debe limpiar pantalla despues de cada accion
*/

import 'dart:io';

void main(List<String> args) {
  int opcion = 0, opcionRecarga = 0;
  double saldo = 100;
  double ingresoFondos = 0, cantidadRetiro = 0, cantidadTransferencia = 0;

  do {
    print("MENU APP BANCARIA");
    print("--------------------------------------------");
    print("1. Consultar saldo");
    print("2. Ingresar fondos");
    print("3. Realizar retiros");
    print("4. Recarga de celular");
    print("5. Transferencia a otra cuenta");
    print("6. Salir");
    print("--------------------------------------------");
    stdout.write("Ingrese la opcion deseada: ");
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        print("Este es su saldo actual");
        print("$saldo COP");
        break;

      case 2:
        stdout.write("Digite la cantidad de fondos que desea ingresar: ");
        ingresoFondos = double.parse(stdin.readLineSync()!);

        if (ingresoFondos <= 0) {
          print("No se permiten cantidades negativas o cero.");
        } else {
          saldo += ingresoFondos;
          print("Su saldo actual con el ingreso de $ingresoFondos COP es de: $saldo COP");
        }
        break;

      case 3:
        stdout.write("Ingrese la cantidad de saldo que desea retirar: ");
        cantidadRetiro = double.parse(stdin.readLineSync()!);

        if (cantidadRetiro <= 0) {
          print("No se permiten cantidades negativas o cero.");
        } else if (cantidadRetiro <= saldo) {
          saldo -= cantidadRetiro;
          print("Usted ha retirado $cantidadRetiro COP");
          print("Su saldo actual es de $saldo COP");
        } else {
          print("Usted no tiene el saldo suficiente para hacer este retiro.");
        }
        break;

      case 4:
        print("Ingrese el paquete que desee, su saldo actual es de: $saldo COP");
        print("1. Paquete de 7000 x3 días");
        print("2. Paquete de 12000 x10 días");
        print("3. Paquete de 15000 x15 días");
        print("4. Paquete de 25000 x30 días");
        stdout.write("Seleccione una opción: ");
        opcionRecarga = int.parse(stdin.readLineSync()!);

        double costoRecarga = 0;
        String mensajeRecarga = "";

        switch (opcionRecarga) {
          case 1:
            costoRecarga = 7000;
            mensajeRecarga = "El paquete de 7000 x3 dias ha sido activado.";
            break;
          case 2:
            costoRecarga = 12000;
            mensajeRecarga = "El paquete de 12000 x10 dias ha sido activado.";
            break;
          case 3:
            costoRecarga = 15000;
            mensajeRecarga = "El paquete de 15000 x15 dias ha sido activado.";
            break;
          case 4:
            costoRecarga = 25000;
            mensajeRecarga = "El paquete de 25000 x30 dias ha sido activado.";
            break;
          default:
            print("Esta opción no es valida");
        }

        if (costoRecarga > 0) {
          if (costoRecarga <= saldo) {
            saldo -= costoRecarga;
            print("$mensajeRecarga Se le restará dicha cantidad a su saldo.");
            print("Su saldo final es de: $saldo COP");
          } else {
            print("No tiene saldo suficiente para esta recarga.");
          }
        }
        break;

      case 5:
        stdout.write("Ingrese la cantidad de dinero que desea transferir: ");
        cantidadTransferencia = double.parse(stdin.readLineSync()!);

        if (cantidadTransferencia <= 0) {
          print("No se permiten cantidades negativas o cero.");
        } else if (cantidadTransferencia <= saldo) {
          saldo -= cantidadTransferencia;
          print("Transaccion exitosa!");
          print("El saldo de la cuenta actualmente es de: $saldo COP");
        } else {
          print("Transaccion invalida. Usted no tiene suficiente saldo en la cuenta: $saldo COP");
        }
        break;

      case 6:
        print("Saliendo del programa...");
        break;

      default:
        print("Opcion invalida");
        break;
    }

    print("");
  } while (opcion != 6);
}
