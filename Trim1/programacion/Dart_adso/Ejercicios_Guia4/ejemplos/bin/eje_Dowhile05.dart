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
  int opcion, opcionRecarga;
  double saldo = 100;
  double ingresoFondos, cantidadRetiro, cantidadTransferencia;

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
    print("Ingrese la opcion deseada");
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        print("Este es su saldo actual");
        print("$saldo COP");
        break;

      case 2:
        print("Digite la cantidad de fondos que desea ingresar");
        ingresoFondos = double.parse(stdin.readLineSync()!);

        saldo = saldo + ingresoFondos;
        print(
          "Su saldo actual con el ingreso de $ingresoFondos COP es de: $saldo",
        );
        break;

      case 3:
        print("Ingrese la cantidad de saldo que desea retirar:");
        cantidadRetiro = double.parse(stdin.readLineSync()!);

        if (cantidadRetiro < saldo) {
          saldo = saldo - cantidadRetiro;
          print("Usted ha retirado $cantidadRetiro COP");
          print("Su saldo actual es de $saldo COP");
        } else {
          print(
            "Usted no tiene el saldo suficiente para hacer este retiro, vuelva a ingresar el valor del retiro:",
          );
          cantidadRetiro = double.parse(stdin.readLineSync()!);
        }
        break;

      case 4:
        print(
          "Ingrese el paquete que desee, tenga en cuenta que su saldo actual es de: $saldo",
        );
        print("1. Paquete de 7000 x3 días");
        print("2. Paquete de 12000 x10 días");
        print("3. Paquete de 15000 x15 días");
        print("4. Paquete de 25000 x30 días");
        print(
          "--------------------------------------------------------------------",
        );
        opcionRecarga = int.parse(stdin.readLineSync()!);

        switch (opcionRecarga) {
          case 1:
            print(
              "El paquete de 7000 x3 dias ha sido activado, se le restara dicha cantidad a su saldo actual.",
            );
            saldo = saldo - opcionRecarga;
            print("Su saldo final es de: $saldo");

            break;
          case 2:
            print(
              "El paquete de 12000 x10 dias ha sido activado, se le restara dicha cantidad a su saldo actual.",
            );
            saldo = saldo - opcionRecarga;
            print("Su saldo final es de: $saldo");
            break;
          case 3:
            print(
              "El paquete de 15000 x15 dias ha sido activado, se le restara dicha cantidad a su saldo actual.",
            );
            saldo = saldo - opcionRecarga;
            print("Su saldo final es de: $saldo");
            break;
          case 4:
            print(
              "El paquete de 25000 x30 dias ha sido activado, se le restara dicha cantidad a su saldo actual.",
            );
            saldo = saldo - opcionRecarga;
            print("Su saldo final es de: $saldo");
            break;
          default:
            print("Esta opción no es valida");
        }
        break;

      case 5:
        print("Ingrese la cantidad de dinero que desea transferir");
        cantidadTransferencia = double.parse(stdin.readLineSync()!);

        if (saldo > cantidadTransferencia) {
          print("Transaccion exitosa!"); 
          saldo = saldo - cantidadTransferencia;

        } else {
          print(
            "Transaccion invalida. Usted no tiene suficiente saldo en la cuenta: $saldo",
          );

          print("Ingrese de nuevo la opcion y digite correctamente la cantidad de dinero que desea transferir");
        }
        print("El saldo de la cuenta actualmente es de: $saldo");
    }
    break;
    
      case 6:
        print("Saliendo del programa...");
        break;

      default:
        print("Opcion invalida");
        break;
while (opcion != 6);

}
}