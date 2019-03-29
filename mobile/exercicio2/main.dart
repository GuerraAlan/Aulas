import 'Circulo.dart';
import 'Quadrado.dart';
import 'Retangulo.dart';
import 'Pessoa.dart';
import 'ContaCorrente.dart';

void main(){
  print('Segunda\n-----------------------------------------');
  segunda();
  print('\n\nTerceira\n-----------------------------------------');
  terceira();
  print('\n\nQuarta\n-----------------------------------------');
  quarta();
  print('\n\nQuinta\n-----------------------------------------');
  quinta();
  print('\n\nSexta\n-----------------------------------------');
  sexta();
}

void segunda(){
  Circulo circulo = new Circulo(3, 'azul');
  print("Cor: ${circulo.cor}, Area: ${circulo.calcularArea()}");
}

void terceira(){
  Quadrado quadrado = new Quadrado(5, 'verde');
  print("Cor: ${quadrado.cor}, Area: ${quadrado.calcularArea()}");
}

void quarta(){
  Retangulo retangulo = new Retangulo(3, 4);
  print("Area: ${retangulo.calcularArea()}, Perimetro: ${retangulo.calcularPerimetro()}");
}

void quinta(){
  Pessoa pessoa = new Pessoa('José', 8, 25, 1.2);
  print(pessoa.toString());
}

void sexta(){
  ContaCorrente cc = new ContaCorrente(1, 'nomeCorrentista');
  print('${cc.saldo}, ${cc.saldo == 0}');
  cc.deposito(20);
  print('${cc.saldo}, ${cc.saldo == 20}');
  cc.saque(10);
  print('${cc.saldo}, ${cc.saldo == 10}');
}