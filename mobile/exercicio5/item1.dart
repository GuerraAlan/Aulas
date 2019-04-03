import 'dart:math';
import 'pessoa.dart';

void main(){
  primeira();
  segunda();
  terceira();
  quarta();
  quinta();

}

void primeira(){
  //Criar um array (List) de inteiros de 20 posições.
  //Inicializar o array com numeros inteiros aleatórios entre 10 e 100.
  Random r = new Random();
  List<int> lista = new List.generate(20, (_) => r.nextInt(91)+10);

  //Em seguida, imprimir todos os elementos do array.
  print(lista);

  //Imprimir a lista na ordem inversa.
  print(lista.reversed);

  //Verificar se a lista contem o número 20.
  print('Contem 20? ${lista.contains(20)? 'Sim' : 'Não'}');

  //Limpar toda a lista.
  lista.clear();

  //Imprimir o tamanho da lista.
  print('Tamanho final da lista: ${lista.length} elementos');
}

void segunda(){
  //Criar uma lista (List) de String de tamanho indefinido.
  List<String> lista = new List();

  //Adicionar o nome de 5 colegas de faculdade e imprimir.
  lista.addAll(['a', 'b', 'c', 'd', 'e']);
  print(lista);

  //Na sequencia, adicione o nome de 5 amigos do colégio e imprima.
  //Imprimir o conjunto dos 10 nomes.
  lista.addAll(['f', 'g', 'h', 'i', 'j']);
  print(lista);

  //Imprimir o primeiro e o último nome.
  print('${lista.first} ${lista.last}');

  //Remover o segundo nome.
  lista.removeAt(1);

  //Imprimir o nome da quinta posição.
  print(lista[4]);
}

void terceira(){
  //Criar um conjunto contendo os nomes das pessoas que você cumprimentou hoje.
  Set<String> conjunto = new Set.from(['a','b','c']);

  //Verificar se o conjunto está vazio
  print('Conjunto vazio? ${conjunto.isEmpty? 'sim' : 'não'}');

  //Verificar o tamanho do conjunto.
  print('Conjunto possui ${conjunto.length} elementos');

  //Dê ‘boa noite’ ao seu vizinho e confira se o nome dele já estava no conjunto; se não estiver, você deve inserir.
  conjunto.add('f');

  //Criar outro conjunto com os nomes da questão 2 – item B.
  Set<String> conjunto2 = new Set.from(['a', 'b', 'c', 'd', 'e']);
  //Imprimir a união dos dois conjuntos.
  print('${new Set.from(conjunto)..addAll(conjunto2)}');

  //Imprimir os elementos que estão presentes nos dois conjuntos.
  print(conjunto.where((e) => conjunto2.contains(e)));
}

void quarta(){
  //Criar um mapa (Map) contendo o número (chave) e o nome (valor) dos meses do ano.
  List<String> meses = ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'];
  Map<int, String> mapa = new Map.fromIterable(meses,
      key: (item) => meses.indexOf(item)+1,
      value: (item) => item);

  //Gerar três números aleatórios entre 1 e 15.
  //Imprimir o nome do respectivo mês com base no mapa criado.
  //Se o número gerado não estiver no mapa, imprimir a mensagem “Mês inválido”.
  Random r = new Random();
  for(int i = 0; i < 3; i++){
    int num = r.nextInt(15)+1;
    print(mapa.containsKey(num) ? mapa[num] : 'Mês $num Inválido');
  }
}

void quinta(){
  //Instanciar 3 pessoas com quaisquer informações.
  List<Pessoa> pessoas = [
    new Pessoa('pessoa1', 11111111),
    new Pessoa('pessoa2', 2222222),
    new Pessoa('pessoa3', 333333333)];

  //Criar um mapa (Map) contendo um número (chave) e a Pessoa (valor).
  //Inserir as 3 pessoas instanciadas no mapa.
  Map<int, Pessoa> mapa = new Map.fromIterable(pessoas,
      key: (item) => pessoas.indexOf(item),
      value: (item) => item);

  //Imprimir as pessoas.
  print(mapa);

  //Remover a última posição utilizando o número correspondente.
  mapa.remove(2);
  print(mapa);
}