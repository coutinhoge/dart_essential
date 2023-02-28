// void main() {
//   String nome = "gabriel";
//   print(nome[0].toUpperCase() + nome.substring(1));
// }

void main() {
  String nome = "apollo";
  print(Utils().toFirstChairToUpperCase(nome));
  print(nome.toFirstChairToUpperCase());
  print('lucke'.toFirstChairToUpperCase());
  print(EnumTest.enumValue.toValue());
  print(EnumTest.enumNovo.toValue());
}

enum EnumTest {
  enumValue,
  enumNovo;
}

extension ExtensionEnum on Enum {
  String toValue() {
    Map map = {EnumTest.enumValue: 'xpto', EnumTest.enumNovo: 'novoValor'};
    return map[this];
  }
}

extension ExtensionString on String {
  String toFirstChairToUpperCase() {
    return this[0].toUpperCase() + this.substring(1);
  }
}

class Utils {
  toFirstChairToUpperCase(String value) {
    return value[0].toUpperCase() + value.substring(1);
  }
}