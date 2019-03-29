/*
Classe Figura: Crie uma classe abstrata que modele uma “figura”:
a. Atributos: Cor, área
b. Métodos: trocaCor, mostraCor, e calcularArea
*/
library exercicio2;

abstract class Figura{
  String  cor;
  double area;

  void trocarCor(String cor);
  String mostrarCor();

  double calcularArea();



}