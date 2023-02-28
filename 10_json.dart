import 'dart:convert';

void main() {
  String json = ''' 
  {
    "usuario": "gabriel@email.com",
    "senha": "123456",
    "permissoes": [
      "onwer", "admin"
    ]
  } 
  ''';

  print(json);

  // Conversao para JSON
  Map resultJson = jsonDecode(json);
  print(resultJson["permissoes"][0]);

  Map mapa = {
    "nome": "Gabriel",
    "pass": "123four",
    "perm": ["onwer", "admin"]
  };

  var result = jsonEncode(mapa);
  print(mapa);
}
