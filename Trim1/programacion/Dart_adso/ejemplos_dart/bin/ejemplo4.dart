//Condiciones en Dart

void main(List<String> args) {
  //condicionales simples
  int edad = 18;
  if (edad >= 18) {
    print("Acceso permitido");
  }

  //condicionales dobles
  double Valornota;
  Valornota = 3.8;
  if (Valornota > 3) {
    print("No aprobado");
  } else {
    print("Aprobado");
  }

  //condicionales anidados
  bool tieneCuenta = true;
  double saldoCuenta = 450.000;
  if (tieneCuenta == true) // Verifica si el usuario tiene una cuenta
  {
    if (saldoCuenta >= 10.000) {
      print("Puedes retirar dinero");
    } else {
      print("No tienes saldo suficiente para retirar dinero");
    }
  } else {
    print("No tienes cuenta, por favor registrate");
  }

  //Condicional multiple
  String diaSemana = "Martes";
  switch (diaSemana) {
    case "Lunes":
      print("Todos hacen el aseo");
      break;
    case "Martes":
      print("Dejar el respositorio de git actualizado");
      break;
    case "Miercoles":
      print("Entregar evidencias");
      break;
    case "Domingo":
    case "Sabado":
      print("No hay formacion");
      break;
    default:
      print("Dia normal de formacion");
  }
}
