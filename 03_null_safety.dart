void main() {
  //Null Safety Able
  String? nome;
  print(nome);

  //Forcing Null Safety //ensuring there is no null value
  //can be null again
  String? lastName;
  lastName = "Coutinho";
  lastName = null;
  print(lastName!);

  //can't be null again
  late String midleName;
  midleName = "Lord";
  print(midleName);
}
