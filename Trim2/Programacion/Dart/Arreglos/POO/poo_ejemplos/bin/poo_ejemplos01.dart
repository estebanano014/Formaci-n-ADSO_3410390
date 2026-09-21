class Persona {
  // atributos = características = estados 
  // Atributos de la clase 

  String nombre;
  String apellido;
  int edad;

  // crear objeto = instancair una clase.
  // Constructor: es un método que se ejecuta cuando se crea un objeto.  
  Persona(this.nombre, this.apellido, this.edad);

  // método = función = acción = comportamiento
  // Método de la clase
  void mostrarNombreCompleto(){
    print("${this.nombre} ${this.apellido}");
  }

  void esMayorEdad(){
    if (this.edad >= 18) {
      print("Es mayor de edad");
    }else{
      print("Es menor de edad");
    }
  }
}
void main(List<String> args) {
  // Se crea un objeto de la clase persona con los atibutos nombre, appellido y edad 
  var persona1 = Persona("Ana", "Sánchez", 18);
  persona1.mostrarNombreCompleto();
  persona1.esMayorEdad();
  
  var persona2 = Persona("Pedro", "Castaño", 17); // Se crea otro on¿bjeto de la clase persona
  print("-"*70);
  persona2.mostrarNombreCompleto();
  persona2.esMayorEdad();

}