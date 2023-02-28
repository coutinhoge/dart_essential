void main() {
  List<String> lista = ["Gabriel", "Coutinho", "30"];
  print(lista[0]);

  //  chave,  valor
  Map<String, String> mapa = {"chave": "valor"};
  print(mapa['chave']);

  // Add valores
  mapa.putIfAbsent("novaChave", () => "novoValor");
  print(mapa);

  mapa["novaChave2"] = "novoValor2";
  print(mapa);

  // Rem Valores
  mapa.remove("chave");
  print(mapa);

  // Att Valores
  mapa["novaChave2"] = "atualizado";
  print(mapa);

  mapa.update("novaChaveDois", (value) => "atualizado2");
  print(mapa);

  // Iterar Mapa
  mapa.forEach((chave, valor) => print('a chave e: $chave, o valor e: $valor'));

  mapa.keys.forEach(print);

  mapa.values.forEach(print);
}