  // Future, Async, await
void main() async {
  String nome = 'Gabriel';
  Future<String> cepFuturo = getCepByName("Rua JK");
  late String cep;

  // cepFuturo.then((result) => cep = (result));

  cep = await cepFuturo;

  print(cep);
}

// Servico Externo
Future<String> getCepByName(String name) {
  // simulando requisicao
  return Future.value("888888");
}