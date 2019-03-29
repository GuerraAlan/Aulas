/*
Classe Retangulo: Crie uma classe que modele um retangulo:
a. Atributos: Base e Altura
b. Métodos: Mudar base, mudar altura, exibir os lados, calcular Área e calcular Perímetro;
c. Crie uma instância de base 3, altura 4; exibir área e perímetro.
 */
library retangulo;

import './Figura.dart';
import 'dart:math';

class Retangulo implements Figura {
  @override
  double area;

  @override
  String cor;

  double base,altura;

  Retangulo(this.base, this.altura);

  @override
  double calcularArea() => base * altura;

  double calcularPerimetro() => (base + altura) * 2;

  @override
  String mostrarCor() => cor;

  @override
  void trocarCor(String cor) => this.cor = cor;

  void mudarBase(double base) => this.base = base;

  void mudarAltura(double altura) => this.altura = altura;

  Set<double> mostrarLados() => {base, altura};


}