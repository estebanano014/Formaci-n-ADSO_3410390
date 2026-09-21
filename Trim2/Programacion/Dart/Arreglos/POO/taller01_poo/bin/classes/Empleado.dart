class Empleado {
  String _nombre;
  int _edad;
  double _salario;
  String _puesto;
  String _tipoContrato;

  Empleado(
    this._nombre, this._edad, this._salario, this._puesto, this._tipoContrato);

  //Metodo que recibe un porcentaje y devuelve el nuevo salario
  double aumentoSalario(double porcentaje) {
    // _salario = _salario + _salario*porcentaje/100;
    _salario += _salario * porcentaje / 100;
    return _salario;
  }

  int cumplirAnios() {
    _edad++; //Aumenta la edad en 1
    return _edad;
  }

  void cambiarPuesto(String newPuesto) {
    _puesto = newPuesto;
  }

  void mostrarInformacion() {
    print('_' * 70);
    print("Nombre: $_nombre");
    print("Edad: $_edad");
    print("Salario: $_salario");
    print("Puesto: $_puesto");
    print('_' * 70);
  }

  /*calcularBonificacion(): calcula y retorna una bonificación basada en el tipo de contrato del empleado:  2. "Temporal": 5% del salario. 3. "Indefinido": 15% del salario.  */
  double calcularBonificacion() {
    switch (_tipoContrato.toUpperCase()) {
      case "  CONTRATISTA":
        return _salario * 0.1; // 1. "Contratista": 10% del salario.
      case "TEMPORAL":
        return _salario * 0.05; // 2. "Temporal": 5% del salario.
      case "INDEFINIDO":
        return _salario * 0.15; // 3. "Indefinido": 15% del salario.
      default:
        return 0;
    }
  }

  //GETTERs y SETTERs
  String getNombre() {
    return _nombre;
  }

  void setNombre(String newNombre) {
    _nombre = newNombre;
  }

  //--------------
  int getEdad() {
    return _edad;
  }

  void setEdad(int newEdad) {
    _edad = newEdad;
  }

  //--------------
  double getSalario() {
    return _salario;
  }

  void setSalario(double newSalario) {
    _salario = newSalario;
  }

  //----------
  String getTipoContrato() {
    return _tipoContrato;
  }

  void setTipoContrato(String newTipoContrato) {
    _tipoContrato = newTipoContrato;
  }
}
