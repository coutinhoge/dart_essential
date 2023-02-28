void main() {
  Filho filho = Filho();
  filho.falar();

  Pagamento pagamento = pagarComBoleto();
  pagamento.pagar();

  pagamento = pagarComPix();
  pagamento.pagar();
}

// Abstracao // Interface
// 'Uma especie de contrato, que deve ser seguido para uma possivel implementacao'
abstract class Pessoa {
  String comunicar(); // nao ha implementacao
}

class Pessoa1 implements Pessoa {
  String comunicar() {
    return "Ola, Mundo!";
  }
}

class Pessoa2 implements Pessoa {
  String comunicar() {
    return "Bom dia!";
  }
}

// Heranca
class Pai {
  String falar() {
    return "Girias";
  }
}

class Filho extends Pai {}

// Polimorfismo
abstract class Pagamento {
  void pagar();
}

class pagarComBoleto implements Pagamento {
  void pagar() {
    print('pagando com boleto');
  }
}

class pagarComPix implements Pagamento {
  void pagar() {
    print('pagando com pix');
  }
}
