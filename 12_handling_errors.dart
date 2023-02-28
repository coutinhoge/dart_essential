// Tratando erros
void main() {
  try {
    // Tentar Algo
    print((2 / 0).toInt()); // Erro Esperado ...
  } catch (e, stackStrace) {
    // Capturar a falha
    print('Printando erro: $e');
//  rethrow; // Propagar erro
//  throw Exception('Ocorreu um erro XPTO'); // Retornar um novo erro
//  throw CustomError('erro customizado'); // Erro customizado
    Login login = Login();

    try {
      login.logar();
    } on PassworldLengthError catch (e) {
      print('falha ao logar!');
    } catch (e) {
      print('Outro erro');
    } finally {
      print('finalizou, enviando logs para o servidor.');
    }
  }

//   String user = "admin";
//   String pass = "123four";

//   if (pass.length <= 6) throw PassworldLengthError();
//
}

// class CustomError implements Exception {
//   final String error;
//   CustomError(this.error);
// }

// class PassworldLengthError implements Exception {
//   PassworldLengthError();
// }

class Login {
  void logar() {
    String user = "admin";
    String pass = "123four";

    if (pass.length <= 6) throw Exception();
  }
}

class PassworldLengthError implements Exception {
  PassworldLengthError();
}
