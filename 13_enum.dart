void main() {
  // Enum // Valores que representam determinada informacao que e imultavel
  var pagamento = Pagamento();
  pagamento.pagar(TipoPagamento.pix);
}

enum TipoPagamento {
  pix,
  boleto,
  cartao;
}

extension EstensionTipoPagamento on TipoPagamento {
  String toValue() {
    Map map = {
      TipoPagamento.pix: 'pix',
      TipoPagamento.boleto: 'boleto',
      TipoPagamento.cartao: 'cartao',
    };

    return map[this];
  }
}

class Pagamento {
  void pagar(TipoPagamento tipoPagamento) {
    if (tipoPagamento.toValue() == 'pix') {
      print('pagando com pix');
    } else if (tipoPagamento.toValue() == 'boleto') {
      print('pagando com boleto');
    } else if (tipoPagamento.toValue() == 'cartao') {
      print('pagando com cartao');
    }
  }
}