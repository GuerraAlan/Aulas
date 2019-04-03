import 'pessoa.dart';

class Amigo extends Pessoa {
  int telefone;
  String email;

  Amigo(int idade, String nome, this.telefone, this.email) : super(idade, nome);

  @override
  String toString() {
    return '$idade - $nome - $telefone - $email';
  }


}