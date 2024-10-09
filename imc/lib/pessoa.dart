class Pessoa {
  String _nome = "";
  double _altura = 0.0;
  double _peso = 0.0;

  Pessoa(String nome, double altura, double peso){
    _nome =nome;
    _altura =altura;
    _peso =peso;
  }

  void setName(String nome){
    _nome =nome;
  }

  String getName() => _nome;

  void setAltura(double altura){
    _altura =altura;
  }

  double getAltura() => _altura;

  void setPeso(double peso){
    _peso =peso;
  }

  double getPeso() => _peso;
}