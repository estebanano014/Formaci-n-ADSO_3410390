import 'dart:io';

class Vehiculo {
  //atributos 
  String _marca;
  String _color;
  int _velocidad;
  double tamanio;
  // constructor
  Vehiculo(this._marca, this._color, this._velocidad, this.tamanio);
  //setters y getters
  void setMarca(String new_marca){
    _marca=new_marca; // se cambia el valor del atributo marca
  }
  String getMarca(){
    return _marca;
  }
  /**************************************/
  void setColor(String new_color){
    _color=new_color;
  }
  String getColor(){
    return _color;
  }
  /**************************************/
  void setVelocidad(int new_velocidad){
    if (new_velocidad<0) {
      print("valor de velocidad incorrecto");
    }else{
    _velocidad = new_velocidad;
    }
  }
  getVelocidad() {
    return _velocidad;
  }
  ///**************************************///
  void setTamanio(double newtamanio){
    tamanio = newtamanio;
  }
  getTamanio(){
    return tamanio;
  }

    /*METODOS ADICIONALES*/

    void avanzar(){
      _velocidad =0;
      print("El vehiculo se detuvo");
    }
    void girarIzquierda (){
      print("El vehiculo gira a la izquieda con velidad de $_velocidad");
    }
  void girarDerecha(){
    print("El vehiculo gira a la derecha con velicidad de $_velocidad");
  }
  void mostrarDatos(){
    print("Marca: $_marca");
    print("Color: $_color");
    print("Velocidad: $_velocidad");
    print("tamaño: $tamanio");
  }
}
void main(List<String> args) {
  /*Generacion de la estructura de un arreglo */

  List<Vehiculo> arrayVehiculos = [];

  int cantidadVehiculos = 0;
  print("Ingrese la cantidad e vehiculos");
  cantidadVehiculos = int.tryParse(stdin.readLineSync()??"")?? 0;

  for (var i = 0; i < cantidadVehiculos; i++) {
    print("_"*50);
    print("Datos para el vehiculo #${i+1}");
    print("Ingrese la marca, color, velocidad y tamaño");
    String marca = stdin.readLineSync()??"";
    String color = stdin.readLineSync()??"";
    int velocidad = int.tryParse(stdin.readLineSync()??"")?? 0;
    double tamanio = double.tryParse(stdin.readLineSync()??"")?? 0;

    /**Creamos un objeto de la clase Vehiculo */
    Vehiculo carroObjeto = Vehiculo(marca, color, velocidad, tamanio);

    /*Se agrega el objeto al array Vehiculo */
    arrayVehiculos.add(carroObjeto);
  }
  for (var i = 0; i < arrayVehiculos.length; i++) {
    print("*"*70);
    print("Marca: ${arrayVehiculos[i].getMarca()}");
    print("Color: ${arrayVehiculos[i].getColor()}");
    print("Velocidad: ${arrayVehiculos[i].getVelocidad()}");
    print("Tamaño: ${arrayVehiculos[i].getTamanio()}");
    print("*"*70);
    arrayVehiculos[i].avanzar();
    print("*"*70);

    
  }
  
}
 