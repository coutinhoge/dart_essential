void main() {
  Carro Mitsubishi = Carro("Lancer");
  Carro Audi = Carro("A3");

  print(Mitsubishi.modelo);
  print(Audi.modelo);
}

// Classe
class Carro {
  // Atributo
  final String modelo;
  String _segredo =
      "Muito Dinheiro"; // Atributo Privado //Ocultos a outros aquivos.dart
  int _valor = 1000;

  int get valorDoCarro =>
      _valor; // A partir de agora a var e publica, porem nao e possive atribuir valores

  //Metodo
  void setValue(int valor) => _valor = valor;

  // Construtor
  Carro(this.modelo);
}