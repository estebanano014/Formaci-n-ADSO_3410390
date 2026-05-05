//Operadores logicos
void main(List<String> args) {
  //operador AND (&&)
  bool tieneCarnet = true;
  int edad = 25;

  //condicion para ingresar ser mayor de edad y tener carnet
  if (tieneCarnet == true && edad >= 60) {
    print("Bienvenido al centro de formacion");
  } else {
    print(
      "No se cumple con los requisitos para ingresar al centro de formacion",
    );
  }

  //operador OR (||)
  bool esFestivo = true;
  bool esSabado = false;

  if (esFestivo == true || esSabado == true) {
    print("No hay formacion");
  } else {
    print("Si hay formacion");
  }

  //Operador NOT (!)
  bool sistemaCaido = true; // sistema caido

  if (!sistemaCaido) // Se valida si el sistema no esta caido
  {
    print("El sistema no esta caido");
  } else {
    print("El sistema esta caido");
  }

  //operadores combinados
  //Aprueba si entrego y saco mas de 3.5 o tiene una excusa valida y puede presentar de nuevo el examen
  double notaExamen = 3.6;
  bool entregoTarea = true;
  bool tieneExcusaValida = false;

  if ((entregoTarea == true && notaExamen >= 3.5) ||
      tieneExcusaValida == true) {
    if (entregoTarea == true) //Si entrego el examen
    {
      if (notaExamen >= 3.5) {
        print("Aprobado");
      } else {
        print(
          "No aprobado, pero tienes una excusa valida para presentar de nuevo el examen",
        );
      }
    } else {
      print(
        "No entrego el examen, pero tienes una excusa valida para presentar de nuevo el examen",
      );
    }
  }
}
