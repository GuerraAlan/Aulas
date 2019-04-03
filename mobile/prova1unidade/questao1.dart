import 'dart:math';

const List<int> _notas = [100, 50, 10, 5, 1];
void main(){
  //Preparando entrada
  int valor = new Random().nextInt(991)+10;
  List<int> notasSacadas = [0,0,0,0,0];
  int valorOriginal = valor;

  //Contando as notas
  while (valor > 0){
    int i = maiorNota(valor);
    valor -= _notas[i];
    notasSacadas[i]++;
  }

  //Preparando saida
  List<String> sb = [];
  for(int i = 0; i < notasSacadas.length; i++){
    if(notasSacadas[i] > 0){
      sb.add('${notasSacadas[i]} Notas de ${_notas[i]}');
    }
  }
  print('O valor $valorOriginal pode ser sacado como ${sb.join(', ')}');
}

int maiorNota(int valor){
  for(int i = 0; i < _notas.length; i++){
    if(valor >= _notas[i]) return i;
  }
  return -1;
}