/*
Classe Conta Corrente: Crie uma classe para implementar uma conta corrente. A classe deve possuir os
seguintes atributos: número da conta, nome do correntista e saldo. Os métodos são os seguintes:
alterarNome, depósito e saque. No construtor, saldo é opcional, com valor default zero e os demais atributos
são obrigatórios.
Criar instância e realizar depósitos e saques.
 */

library contaCorrente;

class ContaCorrente{

  int numeroConta;
  String nomeCorrentista;
  double saldo;

  ContaCorrente(this.numeroConta, this.nomeCorrentista, [this.saldo = 0]);

  void alterarNome(String nome) => this.nomeCorrentista = nome;

  void deposito(double valor) =>
      valor > 0 ?
        this.saldo = saldo + valor :
        throw new ArgumentError("Depósitos não podem ser de valores negativos");

  void saque(double valor) =>
      valor > 0 && (saldo - valor) >= 0 ?
      this.saldo = saldo - valor :
      throw new ArgumentError("Saldo indisponível ou valor inválido");
}