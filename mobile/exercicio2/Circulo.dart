/*
Classe Círculo: Crie uma classe que modele um círculo:
a. Atributos: Cor e raio
b. Métodos: trocaCor, mostraCor e calcularArea
c. Criar uma instância de cor azul e raio 3, imprimir a cor e a área
 */
library circulo;

import './Figura.dart';
import 'dart:math';

class Circulo implements Figura {
  @override
  double area;

  @override
  String cor;

  double raio;

  Circulo(this.raio, this.cor);

  @override
  double calcularArea() => pi * pow(raio, 2);

  @override
  String mostrarCor() => cor;

  @override
  void trocarCor(String cor) => this.cor = cor;

}