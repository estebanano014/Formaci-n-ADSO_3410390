import 'dart:io';

void main(List<String> arguments) {
  // Solicitar datos al usuario para llenar al vector

  // -> Ingresar 10 numeros a un vector de enteros

  List<int> numeros = []; // Declaracion de un vector de eneteros
  int num;
  // Llenar todos los elementos del vector con datos del usuario
  for (var i = 0; i < 10; i++) {
    print("Ingrese el elemento #${i + 1}");
    num = int.parse(stdin.readLineSync()!);

    // Agregar el numero al vector
    numeros.add(num);
  }
  print("*" * 40); // Imprimir 40 asteriscos

  //Mostrar todos los elementos de una lista
  for (var i = 0; i < numeros.length; i++) {
    print("Elemento #${i + 1}: ${numeros[i]}");
    }
    print("*" * 40); // Imprimir 40 asteriscos
    for (var element in numeros) {
      print("Elementos: $element");
    }

    // Vector de multiples tipos de datos
    List<dynamic> listaDinamica = [];
    listaDinamica.add(30);
    listaDinamica.add(4.5);
    listaDinamica.add("ADSO");
    listaDinamica.add(true);
    int edad = 22;
    listaDinamica.add(edad);
    List<bool> estados = [true, false, true, true, false];
    listaDinamica.add(estados);
    print(listaDinamica); // [30, 4.5, "ADSO", true, 22, []]
    if (listaDinamica[2] == "ADSO") {
      listaDinamica[3] = false;
    }
    print(listaDinamica); // [30, 4.5, "ADSO", false, 22, []]
  }
