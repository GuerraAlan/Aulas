/*
Classe Pessoa: Crie uma classe que modele uma pessoa:
a. Atributos: nome, idade, peso e altura
b. Métodos: Envelhercer, engordar, emagrecer, crescer. Obs: por padrão, a cada ano que nossa pessoa
envelhece, sendo a idade dela menor que 21 anos, ela deve crescer 0,5 cm.
c. Criar uma instância com nome José, 8, 25, 1.2. Acionar métodos acima.
* */

library pessoa;

class Pessoa{
  String nome;
  int idade;
  double peso, altura;

  Pessoa(this.nome, this.idade, this.peso, this.altura);

  void envelhecer(){
    this.idade++;
    idade >= 21 ? altura = altura + 0.5 : () => {};
  }

  void engordar(double peso) => this.peso = this.peso + peso;


  void emagrecer(double peso) =>
      this.peso - peso <= 0 ?
        this.peso = this.peso - peso :
        throw new Exception("Impossível emagrecer mais");

  void crescer(double altura) => this.altura = this.altura + altura;

  @override
  String toString() => "$nome $idade $peso $altura";

}