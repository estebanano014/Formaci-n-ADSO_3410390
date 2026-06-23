import 'dart:math';

void main(List<String> args) {
  /* En el procesamiento del café, el control térmico es vital. 
  Escribe un programa que simule el monitoreo de temperatura de
  una máquina durante el proceso de tostión. La temperatura inicial
  es de 180°C y debe aumentar progresivamente una cantidad de grados
  específica y que será aleatoria hasta alcanzar el punto ideal de 
  tostión a 200°C. Se debe consultar la manera de generar un número 
  aleatorio en Dart */
  
  int temperaturaInicial = 180;
  int temperaturaFinal = 200;

  Random random = Random();

  while (temperaturaInicial < temperaturaFinal) {
    int aumentoDeTemperatura = random.nextInt(5) + 1;

    temperaturaInicial += aumentoDeTemperatura;

    print(
        "La temperatura aumentó $aumentoDeTemperatura°C. Temperatura actual: $temperaturaInicial°C");
  }

  print("Se alcanzó el punto ideal de tostión.");
} 