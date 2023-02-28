void main() {
  // Enum // Valores que representam determinada informacao que e imultavel
  var pagamento = Pagamento();
  pagamento.pagar(TipoPagamento.cartao);
}

enum TipoPagamento {
  // pix,
  // boleto,
  // cartao;

  pix(1, 'pix'),
  boleto(2, 'boleto'),
  cartao(3, 'cartao');

  final String value;
  final int id;
  const TipoPagamento(this.id, this.value);
}

class Pagamento {
  void pagar(TipoPagamento tipoPagamento) {
    if (tipoPagamento.value == 'pix') {
      print('pagando com pix id: ${tipoPagamento.id}');
    } else if (tipoPagamento.value == 'boleto') {
      print('pagando com boleto id: ${tipoPagamento.id}');
    } else if (tipoPagamento.value == 'cartao') {
      print('pagando com cartao id: ${tipoPagamento.id}');
    }
  }
}