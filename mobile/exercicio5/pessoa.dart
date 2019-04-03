library pessoa;

//Criar uma classe chamada Pessoa com os atributos ‘nome completo’ e ‘telefone’.
class Pessoa{
  String nomeCompleto;
  int telefone;

  Pessoa(this.nomeCompleto, this.telefone);

  @override
  String toString() => '${this.nomeCompleto} - ${this.telefone}';

}