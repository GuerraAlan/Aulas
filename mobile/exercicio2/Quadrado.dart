/*
Classe Quadrado: Crie uma classe que modele um quadrado:
a. Atributos: lado
b. Métodos: alterar Lado, mostrar Lado e calcularArea;
c. Criar uma instância de cor verde e lado 5, imprimir a cor e a área
 */
library quadrado;

import './Figura.dart';
import 'dart:math';

class Quadrado implements Figura {
  @override
  double area;

  @override
  String cor;

  double lado;

  Quadrado(this.lado, this.cor);

  @override
  double calcularArea() => pow(lado, 2);

  @override
  String mostrarCor() => cor;

  @override
  void trocarCor(String cor) => this.cor = cor;

  void alterarLado(double lado) => this.lado = lado;

  double mostrarLado() => lado;


}