import 'amigo.dart';

void main(){
  Map<String, Amigo> mapa = new Map();

  mapa['Zé'] = new Amigo(20, 'jose', 11111111, 'email@jose');
  mapa['Dé'] = new Amigo(21, 'andre', 22222222, 'email@andre');
  mapa['Edu'] = new Amigo(22, 'eduardo', 33333333, 'email@eduardo');

  print(mapa.keys);
  List<Amigo> listaOrdenada = mapa.values.toList();
  listaOrdenada.sort((a,b) => a.idade - b.idade);
  print(listaOrdenada);

  print('Contem Zé? ${mapa.containsKey('Zé')}');

  mapa.remove('Zé');
  print(mapa);
 }